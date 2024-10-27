# Minitalk

A minimal inter-process communication project using UNIX signals to transmit data between two processes. This project is part of the 42 School curriculum and focuses on understanding process communication through signals.

## About The Project

Minitalk consists of two programs: a server and a client. The server waits for signals from clients and converts them into characters, while the client converts a string into signals and sends them to a specified server.

### Key Features

- Server displays its PID on startup
- Client takes server PID and string as arguments
- Communication using only SIGUSR1 and SIGUSR2 signals
- Supports multiple clients without server restart
- Efficient transmission and display of messages

## Getting Started

### Prerequisites

The project is designed to run on Unix-based systems and requires:
- GCC compiler
- Make
- Unix-based operating system

### Installation

1. Clone the repository

2. Compile the project:
```bash
make
```

This will create two executables: `server` and `client`

### Usage

1. First, start the server:
```bash
./server
```
The server will display its PID.

2. Then, in another terminal, run the client:
```bash
./client [server_pid] [string_to_send]
```

Example:
```bash
./client 12345 "Hello, World!"
```

## Technical Details

### Implementation

- The client converts each character into binary (8 bits)
- SIGUSR1 represents '1'
- SIGUSR2 represents '0'
- The server reconstructs the message by receiving these signals
- Uses signal handlers to process incoming data

### Project Structure

```
.
├── Makefile
├── client.c
├── server.c
└── minitalk.h
```

## Important Notes

### 42 School Coding Norms

This project follows the strict coding standards of 42 School ("Norminette"). These standards include:

- Maximum of 25 lines per function
- Maximum of 5 functions per file
- Declaration and assignment must be on separate lines
- Specific variable naming conventions
- Limited use of library functions

While modern IDEs might suggest optimizations that violate these norms, adherence to the school's style guide is required for pedagogical reasons.

### Learning Objectives

This project teaches:
- Understanding of Unix signals and their handling
- Process IDs and inter-process communication
- Bitwise operations and binary conversion
- Signal handler implementation
- Efficient data transmission without data loss
- Proper error handling in a Unix environment

### Practical Applications

The skills learned in this project are valuable for:
- System programming
- Process communication in Unix environments
- Understanding signal handling in larger applications
- Developing robust client-server applications
- Working with binary data and bit manipulation

## Compilation Flags

The project compiles with the following flags:
```bash
-Wall -Wextra -Werror
```

## Clean Up

To remove object files:
```bash
make clean
```

To remove executables and object files:
```bash
make fclean
```

To recompile everything:
```bash
make re
```
