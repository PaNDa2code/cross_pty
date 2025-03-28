const std = @import("std");
const builtin = @import("builtin");

pub const C0 = enum(u8) {
    NUL = 0x00, // Null
    SOH = 0x01, // Start of Heading
    STX = 0x02, // Start of Text
    ETX = 0x03, // End of Text
    EOT = 0x04, // End of Transmission
    ENQ = 0x05, // Enquiry
    ACK = 0x06, // Acknowledge
    BEL = 0x07, // Bell
    BS = 0x08, // Backspace
    HT = 0x09, // Horizontal Tab
    LF = 0x0A, // Line Feed
    VT = 0x0B, // Vertical Tab
    FF = 0x0C, // Form Feed
    CR = 0x0D, // Carriage Return
    SO = 0x0E, // Shift Out
    SI = 0x0F, // Shift In
    DLE = 0x10, // Data Link Escape
    DC1 = 0x11, // Device Control 1 (XON)
    DC2 = 0x12, // Device Control 2
    DC3 = 0x13, // Device Control 3 (XOFF)
    DC4 = 0x14, // Device Control 4
    NAK = 0x15, // Negative Acknowledge
    SYN = 0x16, // Synchronous Idle
    ETB = 0x17, // End of Transmission Block
    CAN = 0x18, // Cancel
    EM = 0x19, // End of Medium
    SUB = 0x1A, // Substitute
    ESC = 0x1B, // Escape
    FS = 0x1C, // File Separator
    GS = 0x1D, // Group Separator
    RS = 0x1E, // Record Separator
    US = 0x1F, // Unit Separator
    DEL = 0x7F, // Delete (technically not C0 but often included)
    _,
};

pub const C1 = enum(u8) {
    PAD = 0x80, // Padding Character
    HOP = 0x81, // High Octet Preset
    BPH = 0x82, // Break Permitted Here
    NBH = 0x83, // No Break Here
    IND = 0x84, // Index
    NEL = 0x85, // Next Line
    SSA = 0x86, // Start of Selected Area
    ESA = 0x87, // End of Selected Area
    HTS = 0x88, // Horizontal Tab Set
    HTJ = 0x89, // Horizontal Tab Justify
    VTS = 0x8A, // Vertical Tab Set
    PLD = 0x8B, // Partial Line Down
    PLU = 0x8C, // Partial Line Up
    RI = 0x8D, // Reverse Line Feed
    SS2 = 0x8E, // Single-Shift 2
    SS3 = 0x8F, // Single-Shift 3
    DCS = 0x90, // Device Control String
    PU1 = 0x91, // Private Use 1
    PU2 = 0x92, // Private Use 2
    STS = 0x93, // Set Transmit State
    CCH = 0x94, // Cancel Character
    MW = 0x95, // Message Waiting
    SPA = 0x96, // Start Protected Area
    EPA = 0x97, // End Protected Area
    SOS = 0x98, // Start of String
    SGCI = 0x99, // Single Graphic Character Introducer
    SCI = 0x9A, // Single Character Introducer
    CSI = 0x9B, // Control Sequence Introducer
    ST = 0x9C, // String Terminator
    OSC = 0x9D, // Operating System Command
    PM = 0x9E, // Privacy Message
    APC = 0x9F, // Application Program Command
    _,
};
