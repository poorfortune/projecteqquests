# quests/global/10.pl

sub EVENT_SPAWN {
    # Starts the boot sweep timer (fast scaling for fresh zones)
    plugin::era_zc_on_spawn($zonesn, $instanceversion);
}

sub EVENT_TIMER {
    # Runs the boot sweep when "__era_boot" fires
    plugin::era_zc_on_timer($timer, $zonesn, $instanceversion);
}

sub EVENT_SIGNAL {
    # Receives an entity id via signal and scales that NPC on-demand
    plugin::era_zc_on_signal($signal, $zonesn, $instanceversion);
}