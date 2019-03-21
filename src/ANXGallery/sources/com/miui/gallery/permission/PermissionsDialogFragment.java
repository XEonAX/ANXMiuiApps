package com.miui.gallery.permission;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.agreement.BaseAgreementDialog;
import com.miui.gallery.agreement.core.OnAgreementInvokedListener;
import com.miui.gallery.permission.core.OnPermissionIntroduced;
import com.miui.gallery.permission.core.Permission;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class PermissionsDialogFragment extends DialogFragment implements OnAgreementInvokedListener {
    private OnPermissionIntroduced mOnIntroducedListener;

    private static abstract class BaseViewHolder extends ViewHolder {
        public abstract void bindPermission(PermissionWrapper permissionWrapper);

        public BaseViewHolder(View itemView) {
            super(itemView);
        }

        public static View getView(ViewGroup parent, int layoutRes) {
            return LayoutInflater.from(parent.getContext()).inflate(layoutRes, parent, false);
        }
    }

    private static class CategoryViewHolder extends BaseViewHolder {
        private TextView mCategory;

        public CategoryViewHolder(View itemView) {
            super(itemView);
            this.mCategory = (TextView) itemView.findViewById(R.id.category);
        }

        public void bindPermission(PermissionWrapper permission) {
            this.mCategory.setText(this.itemView.getContext().getResources().getString(permission.mRequired ? R.string.permission_require_category : R.string.permission_optional_category));
        }
    }

    private static class PermissionDialog extends BaseAgreementDialog {
        private PermissionAdapter mAdapter = new PermissionAdapter();

        private class DividerDecoration extends BaseDividerDecoration {
            private Drawable mSectionDividerDrawable;
            private int mSectionDividerHeight;

            private DividerDecoration() {
            }

            private void init(Context context) {
                if (this.mSectionDividerDrawable == null) {
                    this.mSectionDividerDrawable = context.getResources().getDrawable(R.drawable.section_divider_bg);
                    this.mSectionDividerHeight = context.getResources().getDimensionPixelSize(R.dimen.agreement_section_divider_height);
                }
            }

            public void onDrawOver(Canvas c, RecyclerView parent, State state) {
                int childCount = parent.getChildCount();
                int parentLeft = parent.getPaddingStart();
                int parentRight = parent.getRight() - parent.getPaddingEnd();
                PermissionAdapter adapter = (PermissionAdapter) parent.getAdapter();
                for (int i = 0; i < childCount; i++) {
                    View child = parent.getChildAt(i);
                    int position = parent.getChildAdapterPosition(child);
                    if (position != -1) {
                        if (position <= 0 || !((PermissionWrapper) adapter.mPermissions.get(position)).mIsCategory) {
                            drawTop(c, child, position == 0 ? parentLeft : parentLeft + this.mPaddingStart, parentRight);
                            if (position == parent.getAdapter().getItemCount() - 1) {
                                drawBottom(c, child, parentLeft, parentRight);
                            }
                        } else {
                            drawSection(c, child, parentLeft, parentRight);
                        }
                    }
                }
            }

            protected void drawSection(Canvas c, View itemView, int left, int right) {
                int top = (int) ((((float) (itemView.getTop() - ((LayoutParams) itemView.getLayoutParams()).topMargin)) + itemView.getTranslationY()) - ((float) this.mSectionDividerHeight));
                this.mSectionDividerDrawable.setBounds(left, top, right, top + this.mSectionDividerHeight);
                this.mSectionDividerDrawable.draw(c);
            }

            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
                int position = parent.getChildAdapterPosition(view);
                if (position > 0) {
                    init(view.getContext());
                    if (((PermissionWrapper) ((PermissionAdapter) parent.getAdapter()).mPermissions.get(position)).mIsCategory) {
                        outRect.set(0, this.mSectionDividerHeight, 0, 0);
                        return;
                    }
                }
                super.getItemOffsets(outRect, view, parent, state);
            }
        }

        private class PermissionAdapter extends Adapter<BaseViewHolder> {
            private ArrayList<PermissionWrapper> mPermissions;

            private PermissionAdapter() {
                this.mPermissions = new ArrayList();
            }

            public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
                switch (viewType) {
                    case 1:
                        return new CategoryViewHolder(BaseViewHolder.getView(parent, R.layout.user_permission_category));
                    default:
                        return new PermissionViewHolder(BaseViewHolder.getView(parent, R.layout.user_permission_item));
                }
            }

            public void onBindViewHolder(BaseViewHolder holder, int position) {
                holder.bindPermission((PermissionWrapper) this.mPermissions.get(position));
            }

            public int getItemCount() {
                return this.mPermissions.size();
            }

            public int getItemViewType(int position) {
                if (((PermissionWrapper) this.mPermissions.get(position)).mIsCategory) {
                    return 1;
                }
                return 0;
            }

            public void setPermissions(List<Permission> permissions) {
                this.mPermissions.clear();
                if (permissions != null) {
                    List<PermissionWrapper> optionals = new LinkedList();
                    for (Permission permission : permissions) {
                        if (permission.mRequired) {
                            this.mPermissions.add(new PermissionWrapper(permission, false));
                        } else {
                            optionals.add(new PermissionWrapper(permission, false));
                        }
                    }
                    if (!this.mPermissions.isEmpty()) {
                        this.mPermissions.add(0, new PermissionWrapper(new Permission("", "", "", true), true));
                    }
                    if (!optionals.isEmpty()) {
                        this.mPermissions.add(new PermissionWrapper(new Permission("", "", "", false), true));
                        this.mPermissions.addAll(optionals);
                    }
                }
                notifyDataSetChanged();
            }
        }

        public PermissionDialog(Context context) {
            super(context, false);
        }

        protected Adapter getAdapter() {
            return this.mAdapter;
        }

        protected ItemDecoration getDividerDecoration() {
            return new DividerDecoration();
        }

        protected CharSequence getSummary() {
            return getContext().getResources().getString(R.string.permission_use_desc);
        }

        public void setPermissions(List<Permission> permissions) {
            this.mAdapter.setPermissions(permissions);
        }
    }

    private static class PermissionViewHolder extends BaseViewHolder {
        private TextView mDesc;
        private TextView mName;

        public PermissionViewHolder(View itemView) {
            super(itemView);
            this.mName = (TextView) itemView.findViewById(R.id.title);
            this.mDesc = (TextView) itemView.findViewById(R.id.desc);
        }

        public void bindPermission(PermissionWrapper permission) {
            this.mName.setText(permission.mName);
            this.mDesc.setText(permission.mDesc);
        }
    }

    private static class PermissionWrapper extends Permission {
        private final boolean mIsCategory;

        public PermissionWrapper(Permission permission, boolean isCategory) {
            super(permission.mPermissionGroup, permission.mName, permission.mDesc, permission.mRequired);
            this.mIsCategory = isCategory;
        }
    }

    public static PermissionsDialogFragment newInstance(ArrayList<Permission> permissions, OnPermissionIntroduced onIntroducedListener) {
        PermissionsDialogFragment fragment = new PermissionsDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("extra_permissions", permissions);
        fragment.setArguments(bundle);
        fragment.setOnIntroducedListener(onIntroducedListener);
        return fragment;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        PermissionDialog dialog = new PermissionDialog(getActivity());
        dialog.setOnAgreementListener(this);
        dialog.setPermissions(getArguments().getParcelableArrayList("extra_permissions"));
        return dialog;
    }

    public void onAgreementInvoked(boolean agreed) {
        if (this.mOnIntroducedListener != null) {
            this.mOnIntroducedListener.onPermissionIntroduced(agreed);
        }
    }

    void setOnIntroducedListener(OnPermissionIntroduced listener) {
        this.mOnIntroducedListener = listener;
    }
}
