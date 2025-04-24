import json
import argparse
import sys

def convert_jsonl(input_filepath, output_filepath):
    """
    Converts a JSONL file from one format to another specific format.

    Args:
        input_filepath (str): Path to the input JSONL file.
        output_filepath (str): Path to the output JSONL file to be created.
    """
    print(f"Starting conversion from '{input_filepath}' to '{output_filepath}'...")
    line_count = 0
    error_count = 0

    try:
        with open(input_filepath, 'r', encoding='utf-8') as infile, \
             open(output_filepath, 'w', encoding='utf-8') as outfile:

            for line_num, line in enumerate(infile, 1):
                line = line.strip()
                if not line:
                    continue # Skip empty lines

                try:
                    # Load the JSON data from the current line of the input file
                    source_data = json.loads(line)

                    # --- Data Mapping ---
                    # Use line number as a simple sequential question_id
                    # (Alternatively, you could try hashing uid or another approach
                    # if you need a different kind of ID)
                    target_question_id = line_num

                    # Map 'subcategory' if it exists, otherwise 'category'
                    # Default to 'unknown' if neither exists
                    target_category = source_data.get('subcategory', source_data.get('category', 'unknown'))

                    # Get the 'prompt' and put it into a list for 'turns'
                    source_prompt = source_data.get('prompt')
                    if source_prompt is None:
                         print(f"Warning: Missing 'prompt' key in line {line_num}. Skipping.", file=sys.stderr)
                         error_count += 1
                         continue # Skip lines without a prompt

                    target_turns = [source_prompt]
                    # If your source data could potentially have multiple turns
                    # represented differently, you would adjust this logic here.

                    # --- Construct Target Object ---
                    target_data = {
                        "question_id": target_question_id,
                        "category": target_category,
                        "turns": target_turns
                    }

                    # Write the converted JSON object as a line in the output file
                    json.dump(target_data, outfile)
                    outfile.write('\n')
                    line_count += 1

                except json.JSONDecodeError:
                    print(f"Warning: Invalid JSON detected on line {line_num}. Skipping.", file=sys.stderr)
                    error_count += 1
                except KeyError as e:
                     print(f"Warning: Missing expected key {e} in line {line_num}. Skipping.", file=sys.stderr)
                     error_count += 1
                except Exception as e:
                    print(f"Warning: An unexpected error occurred processing line {line_num}: {e}. Skipping.", file=sys.stderr)
                    error_count += 1


    except FileNotFoundError:
        print(f"Error: Input file not found at '{input_filepath}'", file=sys.stderr)
        sys.exit(1)
    except IOError as e:
        print(f"Error: Could not read/write file. Check permissions or path. Details: {e}", file=sys.stderr)
        sys.exit(1)

    print(f"\nConversion complete.")
    print(f"Successfully processed and wrote {line_count} lines.")
    if error_count > 0:
        print(f"Encountered {error_count} errors/warnings (lines skipped).")
    print(f"Output saved to '{output_filepath}'")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert JSONL file format.")
    parser.add_argument("-i", "--input", required=True, help="Path to the input JSONL file (source format).")
    parser.add_argument("-o", "--output", required=True, help="Path for the output JSONL file (target format).")

    args = parser.parse_args()

    convert_jsonl(args.input, args.output)
