package jc.philips.c8y.agent_;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
// --- <<IS-END-IMPORTS>> ---

public final class _priv

{
	// ---( internal utility methods )---

	final static _priv _instance = new _priv();

	static _priv _newInstance() { return new _priv(); }

	static _priv _cast(Object o) { return (_priv)o; }

	// ---( server methods )---




	public static final void doubleToInt (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(doubleToInt)>> ---
		// @sigtype java 3.5
		// [i] object:0:required double
		// [o] object:0:required integer
		// [o] field:0:required integerStr
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Object dbl = IDataUtil.get(pipelineCursor, "double");
		pipelineCursor.destroy();
		
		int i = 0;
				
		if (dbl instanceof Double) 
			i = (int) ((Double) dbl).doubleValue();
		else
			i = (int) ((Long) dbl).longValue();
		
		// pipeline out
		
		IDataUtil.put(pipelineCursor, "integer", i);
		IDataUtil.put(pipelineCursor, "integerStr", "" + i);
		pipelineCursor.destroy();
		
			
		// --- <<IS-END>> ---

                
	}
}

