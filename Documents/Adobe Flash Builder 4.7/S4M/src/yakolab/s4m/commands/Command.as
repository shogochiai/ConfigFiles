package yakolab.s4m.commands
{
	public class Command
	{	
		public function undo():void{}
		public function redo():void{}
		
		public function execDo():void {
			redo();
		}
		
		public function Command()
		{
		}
	}
}