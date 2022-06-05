list_file = "scripts\\gtrb\\autogen.txt"

with open(list_file, "r") as f:
    try:
        lines = f.readlines()
        for index in range(len(lines)):
            text = lines[index][1:-10] + "item>, "
            print(text)
        for index in range(len(lines)):
            text = lines[index][1:-1] + ", "
            print(text)
    finally:
        f.close()