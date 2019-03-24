package miui.phrase;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.provider.MiuiSettings.FrequentPhrases;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.AbsListView.MultiChoiceModeListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.miui.system.internal.R;
import java.util.ArrayList;
import miui.app.AlertDialog.Builder;
import miui.app.ListActivity;
import miui.content.ExtraIntent;
import miui.view.menu.ContextMenuDialog;
import miui.widget.EditableListView;
import miui.widget.EditableListViewWrapper;

public class PhraseEditActivity extends ListActivity {
    private static final int MAX_PHRASE_SIZE = 20;
    private static final int REQUEST_ADD_PHRASE = 0;
    private static final String STATE_CHECKED_ITEMS = "state_checked_items";
    private BaseAdapter mAdapter = null;
    private EditableListViewWrapper mEditableListViewWrapper;
    private MultiChoiceModeListener mMultiChoiceModeListener = new EditableListView.MultiChoiceModeListener() {
        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            new MenuInflater(PhraseEditActivity.this).inflate(R.menu.phrase_edit_mode_action, menu);
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            return true;
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            if (item.getItemId() == R.id.menu_delete) {
                final long[] checkedIds = PhraseEditActivity.this.getListView().getCheckedItemIds();
                if (checkedIds.length > 0) {
                    new Builder(PhraseEditActivity.this).setTitle(R.string.delete_frequent_phrases).setMessage(R.string.delete_frequent_phrases_confirm).setPositiveButton(17039370, new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            for (int i = checkedIds.length - 1; i >= 0; i--) {
                                PhraseEditActivity.this.mPhraseList.remove(PhraseEditActivity.this.mPhraseList.get((int) checkedIds[i]));
                            }
                            PhraseEditActivity.this.mAdapter.notifyDataSetChanged();
                        }
                    }).setNegativeButton(17039360, null).show();
                    mode.finish();
                }
            }
            return true;
        }

        public void onDestroyActionMode(ActionMode mode) {
        }

        public void onAllItemCheckedStateChanged(ActionMode mode, boolean checked) {
        }
    };
    private ArrayList<String> mPhraseList = null;

    private class PhraseListAdapter extends BaseAdapter {

        private class ViewHolder {
            private TextView textView;

            private ViewHolder() {
            }

            /* synthetic */ ViewHolder(PhraseListAdapter x0, AnonymousClass1 x1) {
                this();
            }
        }

        private PhraseListAdapter() {
        }

        /* synthetic */ PhraseListAdapter(PhraseEditActivity x0, AnonymousClass1 x1) {
            this();
        }

        public int getCount() {
            return PhraseEditActivity.this.mPhraseList == null ? 0 : PhraseEditActivity.this.mPhraseList.size();
        }

        public Object getItem(int position) {
            if (position >= PhraseEditActivity.this.mPhraseList.size()) {
                return null;
            }
            return PhraseEditActivity.this.mPhraseList.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public boolean hasStableIds() {
            return true;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder;
            View view = convertView;
            if (view == null) {
                view = newView();
                holder = new ViewHolder(this, null);
                holder.textView = (TextView) view.findViewById(16908308);
                view.setTag(holder);
            }
            holder = (ViewHolder) view.getTag();
            if (holder != null) {
                holder.textView.setText((CharSequence) PhraseEditActivity.this.mPhraseList.get(position));
            }
            return view;
        }

        private View newView() {
            return View.inflate(PhraseEditActivity.this, R.layout.phrase_list_item, null);
        }
    }

    protected void onSaveInstanceState(Bundle outState) {
        ArrayList<Integer> positions = new ArrayList();
        for (int i = 0; i < this.mAdapter.getCount(); i++) {
            if (this.mEditableListViewWrapper.isItemChecked(i)) {
                positions.add(Integer.valueOf(i));
            }
        }
        outState.putIntegerArrayList(STATE_CHECKED_ITEMS, positions);
        super.onSaveInstanceState(outState);
    }

    protected void onRestoreInstanceState(Bundle state) {
        super.onRestoreInstanceState(state);
        final ArrayList<Integer> finalPositions = state.getIntegerArrayList(STATE_CHECKED_ITEMS);
        getListView().getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                PhraseEditActivity.this.mEditableListViewWrapper.clearChoices();
                if (finalPositions != null) {
                    for (int i = 0; i < finalPositions.size(); i++) {
                        PhraseEditActivity.this.mEditableListViewWrapper.setItemChecked(((Integer) finalPositions.get(i)).intValue(), true);
                    }
                }
                PhraseEditActivity.this.getListView().getViewTreeObserver().removeOnPreDrawListener(this);
                return false;
            }
        });
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mPhraseList = FrequentPhrases.getFrequentPhrases(this);
        this.mAdapter = new PhraseListAdapter(this, null);
        View headerView = View.inflate(this, R.layout.phrase_list_header, null);
        ListView listView = getListView();
        listView.addHeaderView(headerView, null, false);
        listView.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, final long id) {
                ContextMenuDialog dialog = new ContextMenuDialog(PhraseEditActivity.this);
                dialog.addMenuItem(R.string.menu_edit, new Runnable() {
                    public void run() {
                        Intent intent = ExtraIntent.getAddPhraseIntent();
                        intent.putStringArrayListExtra(AddPhraseActivity.EXTRA_PHRASE_LIST, PhraseEditActivity.this.mPhraseList);
                        intent.putExtra(AddPhraseActivity.EXTRA_PHRASE_INDEX, (int) id);
                        PhraseEditActivity.this.startActivityForResult(intent, 0);
                    }
                });
                dialog.addMenuItem(R.string.menu_delete, new Runnable() {
                    public void run() {
                        new Builder(PhraseEditActivity.this).setTitle(R.string.delete_frequent_phrases).setMessage(R.string.delete_frequent_phrases_confirm).setPositiveButton(17039370, new OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                PhraseEditActivity.this.mPhraseList.remove(PhraseEditActivity.this.mPhraseList.get((int) id));
                                PhraseEditActivity.this.mAdapter.notifyDataSetChanged();
                            }
                        }).setNegativeButton(17039360, null).show();
                    }
                });
                dialog.show();
            }
        });
        this.mEditableListViewWrapper = new EditableListViewWrapper(getListView());
        this.mEditableListViewWrapper.setAdapter(this.mAdapter);
        this.mEditableListViewWrapper.setMultiChoiceModeListener(this.mMultiChoiceModeListener);
    }

    protected void onPause() {
        super.onPause();
        FrequentPhrases.setFrequentPhrases(this, this.mPhraseList);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.phrase_action, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() != R.id.menu_add_phrase) {
            return super.onOptionsItemSelected(item);
        }
        if (this.mPhraseList == null || this.mPhraseList.size() + 1 <= 20) {
            Intent intent = ExtraIntent.getAddPhraseIntent();
            intent.putStringArrayListExtra(AddPhraseActivity.EXTRA_PHRASE_LIST, this.mPhraseList);
            startActivityForResult(intent, 0);
        } else {
            CharSequence sizeExceeded = getResources().getText(R.string.frequent_phrases_size_exceeded);
            Toast.makeText(getApplicationContext(), String.format(sizeExceeded.toString(), new Object[]{Integer.valueOf(20)}), 0).show();
        }
        return true;
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 0 && resultCode == -1) {
            ArrayList<String> phraseList = data.getStringArrayListExtra(AddPhraseActivity.EXTRA_PHRASE_LIST);
            if (phraseList != null && phraseList.size() > 0) {
                this.mPhraseList = phraseList;
                this.mAdapter.notifyDataSetChanged();
            }
        }
    }
}
