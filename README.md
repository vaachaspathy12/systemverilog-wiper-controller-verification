# Automotive Windshield Wiper Controller Verification using SystemVerilog

A SystemVerilog-based design and verification project for an Automotive Windshield Wiper Controller. This project demonstrates RTL design, constrained-random verification, and Object-Oriented Programming (OOP) concepts in SystemVerilog.

## Project Overview

The project implements an Automotive Windshield Wiper Controller that controls the wiper motor and speed based on:

- Ignition status
- Rain sensor input
- Wiper operating mode

The verification environment is built using SystemVerilog OOP concepts such as:

- Encapsulation
- Inheritance
- Polymorphism
- Virtual Classes
- Mailboxes
- Generator-Driver-Monitor-Scoreboard Architecture

---

## Features

- RTL implementation of Automotive Wiper Controller
- Constrained-random stimulus generation
- Functional verification using Scoreboard
- Self-checking testbench
- OOP-based verification environment
- Interface-based DUT connectivity

---

## Operating Modes

| Mode | Description |
|------|-------------|
| 00 | Wiper OFF |
| 01 | Automatic Mode (Rain Sensor Controlled) |
| 10 | Low-Speed Continuous Mode |
| 11 | High-Speed Continuous Mode |

---

## Project Structure

```
├── design.sv             # DUT
├── interface.sv          # Interface
├── encapsulation.sv      # Transaction Class
├── generator.sv          # Generator
├── driver.sv             # Driver
├── monitor.sv            # Monitor
├── scoreboard.sv         # Scoreboard
├── environment.sv        # Verification Environment
├── virtualclass.sv       # Base Virtual Class
├── inheritance.sv        # Derived Test Class
├── polymorphism.sv       # Top Module
├── testbench.sv          # Compilation File
└── README.md
```

---

## Verification Architecture

```
Generator
     │
     ▼
 Mailbox
     │
     ▼
 Driver
     │
     ▼
 Interface
     │
     ▼
    DUT
     │
     ▼
 Monitor
     │
     ▼
 Mailbox
     │
     ▼
 Scoreboard
```

---

## Verification Methodology

The verification environment follows a self-checking architecture:

- Generator creates randomized transactions.
- Driver applies transactions to the DUT.
- Monitor captures DUT responses.
- Scoreboard computes expected outputs and compares them with actual outputs.
- PASS/FAIL messages are displayed automatically.

---

## OOP Concepts Demonstrated

- Encapsulation
- Inheritance
- Polymorphism
- Virtual Classes
- Object-based Transactions
- Mailbox Communication

---

## Simulation

Simulation can be performed using:

- Cadence Xcelium (xrun)
- EDA Playground

Example:

```bash
xrun testbench.sv
```

---

## Results

- 20 Randomized Test Cases
- 20 Passed
- 0 Failed

The design successfully passed all functional verification tests.

---

## Technologies Used

- SystemVerilog
- Cadence Xcelium
- EDA Playground

---

## Learning Outcomes

This project demonstrates:

- RTL Design
- Functional Verification
- Constrained Random Verification
- Self-checking Testbench
- SystemVerilog OOP
- Verification Environment Development

---

## Author

**Shree Krishna Vaachaspathy**

M.Tech – VLSI Design & Embedded Systems

Ramaiah Institute of Technology

---

## License

This project is intended for educational and learning purposes.
