sub EVENT_SPELL_EFFECT_CLIENT 
{	my $caster = $entity_list->GetClientByID($caster_id);	
	$caster->SetAAPoints($caster->GetAAPoints()+1);
	$caster->Message(15, "You have been granted an AA! You currently have " . $caster->GetAAPoints() . " AA point(s) available to spend.");
}
