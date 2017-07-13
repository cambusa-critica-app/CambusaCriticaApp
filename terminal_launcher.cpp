#include "terminal_launcher.h"

void TerminalLauncher::open_terminal() {
    this->proc.start("gnome-terminal", QIODevice::ReadWrite);
}
