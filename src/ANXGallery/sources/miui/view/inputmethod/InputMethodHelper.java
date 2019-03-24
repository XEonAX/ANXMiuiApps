package miui.view.inputmethod;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class InputMethodHelper {
    private static final SoftReferenceSingleton<InputMethodHelper> s = new SoftReferenceSingleton<InputMethodHelper>() {
        /* renamed from: eb */
        protected InputMethodHelper createInstance() {
            return new InputMethodHelper();
        }
    };
    private InputMethodManager Og;

    /* synthetic */ InputMethodHelper(AnonymousClass1 anonymousClass1) {
        this();
    }

    private InputMethodHelper() {
        this.Og = (InputMethodManager) AppConstants.getCurrentApplication().getSystemService("input_method");
    }

    public static InputMethodHelper getInstance() {
        return (InputMethodHelper) s.get();
    }

    public InputMethodManager getManager() {
        return this.Og;
    }

    public void showKeyBoard(EditText editText) {
        editText.requestFocus();
        this.Og.viewClicked(editText);
        this.Og.showSoftInput(editText, 0);
    }

    public void hideKeyBoard(EditText editText) {
        this.Og.hideSoftInputFromInputMethod(editText.getWindowToken(), 0);
    }
}
