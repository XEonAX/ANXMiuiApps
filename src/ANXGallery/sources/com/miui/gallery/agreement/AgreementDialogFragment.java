package com.miui.gallery.agreement;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.agreement.core.Agreement;
import com.miui.gallery.agreement.core.OnAgreementInvokedListener;
import java.util.ArrayList;
import java.util.List;

public class AgreementDialogFragment extends DialogFragment {
    private OnAgreementInvokedListener mListener;

    private static class AgreementDialog extends BaseAgreementDialog {
        private AgreementAdapter mAdapter = new AgreementAdapter();

        private class AgreementAdapter extends Adapter<AgreementViewHolder> implements OnCheckChangedListener {
            private List<AgreementWrapper> mAgreements;

            private AgreementAdapter() {
                this.mAgreements = new ArrayList();
            }

            public AgreementViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
                return new AgreementViewHolder(AgreementViewHolder.getView(viewGroup, R.layout.user_agreement_item));
            }

            public void onBindViewHolder(AgreementViewHolder viewHolder, int position) {
                viewHolder.bindAgreement((AgreementWrapper) this.mAgreements.get(position), this);
            }

            public int getItemCount() {
                return this.mAgreements.size();
            }

            public void setAgreements(List<Agreement> agreements) {
                this.mAgreements.clear();
                if (agreements != null) {
                    AgreementWrapper wrapper;
                    for (Agreement agreement : agreements) {
                        wrapper = new AgreementWrapper(agreement, false);
                        wrapper.mChecked = true;
                        this.mAgreements.add(wrapper);
                    }
                    if (!this.mAgreements.isEmpty()) {
                        wrapper = new AgreementWrapper(new Agreement(AgreementDialog.this.getContext().getResources().getString(R.string.select_all), null, false), true);
                        wrapper.mChecked = true;
                        this.mAgreements.add(0, wrapper);
                    }
                }
                notifyDataSetChanged();
            }

            public void onCheckChanged(AgreementWrapper agreement) {
                boolean needNotifyChanged = false;
                if (agreement.isSelectItem) {
                    for (AgreementWrapper wrapper : this.mAgreements) {
                        if (wrapper.mChecked != agreement.mChecked) {
                            wrapper.mChecked = agreement.mChecked;
                            needNotifyChanged = true;
                        }
                    }
                } else {
                    boolean isSameCheckState = true;
                    AgreementWrapper selectItem = null;
                    for (AgreementWrapper wrapper2 : this.mAgreements) {
                        if (wrapper2.isSelectItem) {
                            selectItem = wrapper2;
                        } else if (agreement.mChecked != wrapper2.mChecked) {
                            isSameCheckState = false;
                        }
                    }
                    if (isSameCheckState) {
                        if (selectItem.mChecked != agreement.mChecked) {
                            needNotifyChanged = true;
                        } else {
                            needNotifyChanged = false;
                        }
                        selectItem.mChecked = agreement.mChecked;
                    } else {
                        if (selectItem.mChecked) {
                            needNotifyChanged = true;
                        } else {
                            needNotifyChanged = false;
                        }
                        selectItem.mChecked = false;
                    }
                }
                if (needNotifyChanged) {
                    notifyDataSetChanged();
                }
                boolean actionButtonEnabled = true;
                for (AgreementWrapper wrapper22 : this.mAgreements) {
                    if (wrapper22.mRequired && !wrapper22.mChecked) {
                        actionButtonEnabled = false;
                    }
                }
                AgreementDialog.this.setActionButtonEnabled(actionButtonEnabled);
            }
        }

        public AgreementDialog(Context context) {
            super(context, true);
        }

        protected Adapter getAdapter() {
            return this.mAdapter;
        }

        protected CharSequence getSummary() {
            return getContext().getResources().getString(R.string.agreement_summary);
        }

        public void setAgreements(List<Agreement> agreements) {
            this.mAdapter.setAgreements(agreements);
        }
    }

    private static class AgreementViewHolder extends ViewHolder implements OnClickListener {
        private AgreementWrapper mAgreement;
        CheckBox mCheckBox;
        private OnCheckChangedListener mCheckChangedListener;
        TextView mText;

        private interface OnCheckChangedListener {
            void onCheckChanged(AgreementWrapper agreementWrapper);
        }

        public AgreementViewHolder(View itemView) {
            super(itemView);
            this.mText = (TextView) itemView.findViewById(R.id.title);
            this.mCheckBox = (CheckBox) itemView.findViewById(R.id.checkbox);
        }

        public void bindAgreement(AgreementWrapper agreement, OnCheckChangedListener listener) {
            this.mAgreement = agreement;
            this.mText.setText(parseAgreementText(agreement));
            Resources res = this.itemView.getContext().getResources();
            if (TextUtils.isEmpty(agreement.mLink)) {
                this.mText.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, null, null);
            } else {
                this.mText.setCompoundDrawablePadding(res.getDimensionPixelSize(R.dimen.agreement_item_arrow_padding));
                this.mText.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, this.itemView.getContext().getDrawable(miui.R.drawable.arrow_right), null);
            }
            if (agreement.isSelectItem) {
                this.mText.setTextAppearance(this.itemView.getContext(), R.style.f192TextAppearance.PreferenceList);
            } else {
                this.mText.setTextAppearance(this.itemView.getContext(), R.style.f187TextAppearance.Agreement);
            }
            if (TextUtils.isEmpty(agreement.mLink)) {
                this.mText.setOnClickListener(null);
            } else {
                this.mText.setOnClickListener(this);
            }
            this.mCheckBox.setChecked(agreement.mChecked);
            this.mCheckBox.setOnClickListener(this);
            this.mCheckChangedListener = listener;
        }

        private CharSequence parseAgreementText(AgreementWrapper agreement) {
            StringBuilder builder = new StringBuilder();
            builder.append(agreement.mText);
            if (!agreement.isSelectItem) {
                builder.append(" ");
                Resources res = this.itemView.getContext().getResources();
                if (agreement.mRequired) {
                    builder.append(res.getString(R.string.agreement_required_tip));
                } else {
                    builder.append(res.getString(R.string.agreement_optional_tip));
                }
            }
            return builder.toString();
        }

        public void onClick(View v) {
            if (v.getId() == R.id.title) {
                AgreementsUtils.viewAgreement(v.getContext(), this.mAgreement);
            }
            if (v.getId() == R.id.checkbox) {
                this.mAgreement.mChecked = this.mCheckBox.isChecked();
                if (this.mCheckChangedListener != null) {
                    this.mCheckChangedListener.onCheckChanged(this.mAgreement);
                }
            }
        }

        public static View getView(ViewGroup parent, int layoutRes) {
            return LayoutInflater.from(parent.getContext()).inflate(layoutRes, parent, false);
        }
    }

    private static class AgreementWrapper extends Agreement {
        private final boolean isSelectItem;
        private boolean mChecked;

        public AgreementWrapper(Agreement agreement, boolean isSelectItem) {
            super(agreement.mText, agreement.mLink, agreement.mRequired);
            this.isSelectItem = isSelectItem;
        }
    }

    public static AgreementDialogFragment newInstance(ArrayList<Agreement> agreements) {
        AgreementDialogFragment fragment = new AgreementDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("extra_agreements", agreements);
        fragment.setArguments(bundle);
        return fragment;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        AgreementDialog dialog = new AgreementDialog(getActivity());
        dialog.setOnAgreementListener(this.mListener);
        dialog.setAgreements(getArguments().getParcelableArrayList("extra_agreements"));
        return dialog;
    }

    public void invoke(Activity activity, OnAgreementInvokedListener listener) {
        this.mListener = listener;
        show(activity.getFragmentManager(), "AgreementDialogFragment");
    }
}
