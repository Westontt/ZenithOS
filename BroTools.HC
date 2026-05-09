// BroTools.HC - Small utilities menu
U0 BroTools()
{
    I64 choice;
    while (1) {
        DocClear;
        Print("=== Bro Tools ===\n\n");
        Print("1. Hello Bro\n");
        Print("2. System Info\n");
        Print("3. Reboot\n");
        Print("0. Exit\n\n");
        choice = GetChar - '0';
        
        if (choice == 1) HelloBro;
        else if (choice == 2) Drv;
        else if (choice == 3) Reboot;
        else if (choice == 0) break;
    }
}

BroTools;