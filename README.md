# ⚡ Tiny MIPS CPU

<img width="266" height="150" alt="edited_tiny_mips_cpu_flyer" src="https://github.com/user-attachments/assets/86a3bf47-7c50-4727-b9ab-d22324c15817" />
![Uploading tiny_mips_cpu_flyer_landscape copy.png…]()


An 8-bit multicycle Tiny MIPS processor implemented in Verilog and taken through the complete ASIC design flow:
- RTL Design
- Functional Verification
- Logic Synthesis
- DFT / Scan Insertion
- Physical Design (Place & Route)

---

##  Overview

This project implements a simplified multicycle MIPS CPU capable of executing a subset of MIPS instructions using a byte-addressable memory architecture.

The processor was designed in Verilog HDL and verified using simulation waveforms and a self-checking testbench. The design was later synthesized, scan-inserted, and physically implemented using industry-standard ASIC tools.

---

##  Features

- 8-bit datapath architecture
- Multicycle finite state machine (FSM) controller
- Byte-by-byte instruction fetch
- Unified instruction/data memory
- Arithmetic and logical operations
- Branch and jump support
- Self-checking verification environment
- DFT scan chain insertion
- Complete ASIC backend flow

---

##  Architecture

### Processor Components

- Program Counter (PC)
- Controller FSM
- ALU + ALU Control
- Register File
- Instruction Register
- Memory Data Register
- Unified RAM
- Multiplexers and datapath logic

---

## 🔄 Supported Instructions

| Instruction | Type | Description |
|---|---|---|
| ADD | R-Type | Arithmetic addition |
| SUB | R-Type | Arithmetic subtraction |
| AND | R-Type | Logical AND |
| LW  | I-Type | Load word |
| SW  | I-Type | Store word |
| BEQ | I-Type | Branch if equal |
| J   | J-Type | Jump |

---

## ✅ Verification

A self-checking Verilog testbench was implemented to automatically validate processor behavior.

### Verified Operations

| Test | Expected Result |
|---|---|
| ADD | mem[0xFF] = 0x29 |
| SUB | mem[0xFE] = 0x10 |
| AND | mem[0xFD] = 0x00 |
| BEQ | mem[0xFC] = 0x05 |
| JUMP | mem[0xFB] = 0x2A |

The testbench monitored:
- Memory writes
- FSM state transitions
- ALU outputs
- Register writes
- Branch control signals

---

## 📈 Simulation Results

The processor successfully executed:
- Arithmetic instructions
- Memory operations
- Branch instructions
- Jump instructions

### Key Metrics

| Metric | Value |
|---|---|
| Total cycles | 141 |
| Instructions executed | ~20 |
| Average CPI | ~7 |
| Memory size | 256 bytes |

---

##  Synthesis Results

Logic synthesis was performed using:
- Synopsys Design Compiler
- OSU AMI 0.5μm standard cell library

### Area Results

| Metric | Value |
|---|---|
| Total cells | 836 |
| Total area | 300,474 μm² |
| Sequential cells | 146 |
| Combinational cells | 668 |

### Timing Results

| Metric | Value |
|---|---|
| Clock target | 25 MHz |
| Max frequency | ~98 MHz |
| Slack | +29.56 ns |

### Power Results

| Metric | Value |
|---|---|
| Total dynamic power | 7.59 mW |
| Leakage power | 83.53 nW |

---

## 🔍 DFT / Scan Insertion

Design-for-Test (DFT) was implemented using Synopsys DFT Compiler.

### Scan Results

| Metric | Value |
|---|---|
| Scan chain length | 128 FFs |
| Scan chains | 1 |
| Fault coverage | 54.63% |

Known limitation:
- FSM state registers used DFFSR cells without scan equivalents.

---

## 🧱 Physical Design

Place-and-route was completed using Cadence Innovus.

### Physical Metrics

| Metric | Value |
|---|---|
| Final chip area | 372,744 μm² |
| Total instances | 783 |
| Post-route frequency | ~95 MHz |
| Post-route power | 41.378 mW |

### Physical Design Stages

- Floorplanning
- Power planning
- Standard-cell placement
- Clock routing
- Signal routing
- Post-route timing analysis

---

## 📸 Layout Results

### Floorplan
(Add image here)

### Routed Layout
(Add image here)

### Power Routing
(Add image here)

---

##  Running Simulation

Compile and simulate using:

```bash
iverilog -o mips_sim tb/mips_tb.v src/*.v
vvp mips_sim
```

View waveforms:

```bash
gtkwave dump.vcd
```

---

## 📂 Important Files

| File | Description |
|---|---|
| `mips.v` | Top-level CPU module |
| `controller.v` | FSM controller |
| `datapath.v` | Datapath implementation |
| `ram.v` | Unified memory |
| `mips_tb.v` | Self-checking testbench |
| `ram.dat` | Program memory initialization |

---

## ⚠️ Challenges Encountered

### PC Increment Bug
The PC was incorrectly incrementing during FETCH3, causing instruction misalignment.

### Instruction Assembly
Instruction bytes were initially assembled incorrectly across fetch states.

### DFT Scan Limitations
Some FSM registers lacked scan-equivalent cells in the OSU library.

---

## 🔮 Future Improvements

- Add pipelining
- Expand instruction set
- Add cache hierarchy
- Implement hazard detection
- Improve memory interface
- Build a MIPS assembler

---

## 📚 Tools Used

| Category | Tool |
|---|---|
| RTL Design | Verilog HDL |
| Simulation | ModelSim / Icarus Verilog |
| Synthesis | Synopsys Design Compiler |
| DFT | Synopsys DFT Compiler |
| Place & Route | Cadence Innovus |

---

## 👤 Author

Isabella Opoku-Ware  
Electrical & Electronics Engineering

---

## 📄 License

MIT License
