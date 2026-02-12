load "5XH3.pdb", my_complex

# 1. Focus on your reference point (e.g., residue 50)
label = "resi 160"
color red, resi 160
origin label        # Set rotation center

# 2. Extract 6 specific samples
python
views = [
    ("front", ""),
    ("back", "turn y, 180"),
    ("left", "turn y, 90"),
    ("right", "turn y, -90"),
    ("top", "turn x, 90"),
    ("iso", "turn x, 45; turn y, 45")
]

for name, cmd_str in views:
    if cmd_str:
        for sub_cmd in cmd_str.split('; '):
            cmd.do(sub_cmd)
    
    filename = f"sample_{name}.png"
    cmd.png(filename, width=1200, height=900, dpi=300, ray=1)
    print(f"Captured {name} view")
python end