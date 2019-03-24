package miui.phrase;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.provider.MiuiSettings.FrequentPhrases;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.EditText;
import com.android.internal.app.AlertController.AlertParams;
import com.miui.system.internal.R;
import java.util.ArrayList;
import miui.app.AlertActivity;
import miui.view.EditActionMode;

public class AddPhraseActivity extends AlertActivity implements OnClickListener {
    public static final String EXTRA_PHRASE_INDEX = "phrase_index";
    public static final String EXTRA_PHRASE_LIST = "phrase_list";
    private int mEditIndex = -1;
    private EditText mEditText = null;
    private ArrayList<String> mPhraseList = null;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        this.mPhraseList = intent.getStringArrayListExtra(EXTRA_PHRASE_LIST);
        if (this.mPhraseList == null) {
            this.mPhraseList = new ArrayList();
        }
        this.mEditIndex = intent.getIntExtra(EXTRA_PHRASE_INDEX, -1);
        AlertParams ap = this.mAlertParams;
        if (this.mEditIndex > -1) {
            ap.mTitle = getString(R.string.edit_frequent_phrases);
        } else {
            ap.mTitle = getString(R.string.add_frequent_phrases);
        }
        ap.mView = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.phrase_add, null);
        this.mEditText = (EditText) ap.mView.findViewById(R.id.phrase_edit);
        if (this.mEditIndex != -1 && this.mPhraseList.size() > this.mEditIndex) {
            this.mEditText.setText((CharSequence) this.mPhraseList.get(this.mEditIndex));
        }
        ap.mPositiveButtonText = getString(17039370);
        ap.mNegativeButtonText = getString(17039360);
        ap.mPositiveButtonListener = this;
        setupAlert();
        final Button confirmButton = (Button) findViewById(EditActionMode.BUTTON1);
        confirmButton.setEnabled(false);
        this.mEditText.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            public void afterTextChanged(Editable s) {
                if (TextUtils.isEmpty(s) || TextUtils.getTrimmedLength(s) == 0) {
                    confirmButton.setEnabled(false);
                } else {
                    confirmButton.setEnabled(true);
                }
            }
        });
    }

    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            overridePendingTransition(0, 0);
        }
    }

    public void onClick(DialogInterface dialog, int which) {
        if (which == -1) {
            CharSequence phrase = this.mEditText.getText();
            if (!TextUtils.isEmpty(phrase) && TextUtils.getTrimmedLength(phrase) != 0) {
                if (this.mEditIndex > -1) {
                    this.mPhraseList.remove(this.mEditIndex);
                    this.mPhraseList.add(this.mEditIndex, phrase.toString());
                } else {
                    this.mPhraseList.add(phrase.toString());
                }
                FrequentPhrases.setFrequentPhrases(this, this.mPhraseList);
                setResult(-1, new Intent().putStringArrayListExtra(EXTRA_PHRASE_LIST, this.mPhraseList));
            }
        }
    }
}
