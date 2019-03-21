package com.miui.gallery.movie.ui.adapter;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Canvas;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.meicam.sdk.NvsThumbnailView;
import com.miui.gallery.R;
import com.miui.gallery.movie.entity.ImageEntity;
import com.miui.gallery.movie.ui.adapter.BaseAdapter.BaseHolder;
import java.util.Collections;
import miui.view.animation.CubicEaseOutInterpolator;

public class EditAdapter extends BaseAdapter<ImageEntity> {
    private static final ImageEntity ITEM_ADD = new ImageEntity("ITEM_ADD", null);
    private Callback mCallback;
    private OnActionListener mOnActionListener;

    public class EditHolder extends BaseHolder {
        protected NvsThumbnailView mImageView;
        protected ImageView mImageViewAdd;

        public EditHolder(View itemView) {
            super(itemView);
            this.mImageView = (NvsThumbnailView) itemView.findViewById(R.id.item_iv);
            this.mImageViewAdd = (ImageView) itemView.findViewById(R.id.item_iv_add);
        }

        public void bindView(int position) {
            if (EditAdapter.this.isAddItem(position)) {
                this.mImageView.setVisibility(8);
                this.mImageViewAdd.setVisibility(0);
                return;
            }
            this.mImageView.setVisibility(0);
            this.mImageViewAdd.setVisibility(8);
            this.mImageView.setMediaFilePath(EditAdapter.this.getItemData(position).image);
        }
    }

    public interface OnActionListener {
        void onMove(int i, int i2);
    }

    public EditAdapter(Context context) {
        super(context);
        this.mCallback = new Callback() {
            private int mFromPosition;
            private boolean mLastActive;
            private boolean mMove;
            private int mToPosition;
            private final Interpolator sDragScrollInterpolator = new Interpolator() {
                public float getInterpolation(float t) {
                    return (t * t) * t;
                }
            };
            private final Interpolator sDragViewScrollCapInterpolator = new Interpolator() {
                public float getInterpolation(float t) {
                    t -= 1.0f;
                    return ((((t * t) * t) * t) * t) + 1.0f;
                }
            };

            public boolean isLongPressDragEnabled() {
                return true;
            }

            public boolean isItemViewSwipeEnabled() {
                return false;
            }

            public void onSelectedChanged(ViewHolder viewHolder, int actionState) {
                super.onSelectedChanged(viewHolder, actionState);
                if (actionState != 0) {
                    int position = viewHolder.getAdapterPosition();
                    if (!EditAdapter.this.isAddItem(position)) {
                        EditAdapter.this.doScaleAnimal(viewHolder.itemView, true);
                        this.mMove = true;
                        this.mFromPosition = position;
                        this.mToPosition = position;
                    }
                } else if (this.mMove && this.mFromPosition != this.mToPosition && EditAdapter.this.mOnActionListener != null) {
                    EditAdapter.this.mOnActionListener.onMove(this.mFromPosition, this.mToPosition);
                }
            }

            public void onChildDraw(Canvas c, RecyclerView recyclerView, ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
                super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
                if (this.mLastActive && !isCurrentlyActive) {
                    EditAdapter.this.doScaleAnimal(viewHolder.itemView, false);
                }
                this.mLastActive = isCurrentlyActive;
            }

            public void clearView(RecyclerView recyclerView, ViewHolder viewHolder) {
                super.clearView(recyclerView, viewHolder);
                EditAdapter.this.doScaleAnimal(viewHolder.itemView, false);
            }

            public int getMovementFlags(RecyclerView recyclerView, ViewHolder viewHolder) {
                if (EditAdapter.this.isAddItem(viewHolder.getAdapterPosition())) {
                    return Callback.makeMovementFlags(0, 0);
                }
                return Callback.makeMovementFlags(15, 0);
            }

            public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int viewSize, int viewSizeOutOfBounds, int totalSize, long msSinceStartScroll) {
                float timeRatio;
                int cappedScroll = (int) (((float) (((int) Math.signum((float) viewSizeOutOfBounds)) * 40)) * this.sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (1.0f * ((float) Math.abs(viewSizeOutOfBounds))) / ((float) viewSize))));
                if (msSinceStartScroll > 500) {
                    timeRatio = 1.0f;
                } else {
                    timeRatio = ((float) msSinceStartScroll) / 500.0f;
                }
                int value = (int) (((float) cappedScroll) * this.sDragScrollInterpolator.getInterpolation(timeRatio));
                if (value == 0) {
                    return viewSizeOutOfBounds > 0 ? 1 : -1;
                } else {
                    return value;
                }
            }

            public boolean onMove(RecyclerView recyclerView, ViewHolder viewHolder, ViewHolder target) {
                int fromPosition = viewHolder.getAdapterPosition();
                int toPosition = target.getAdapterPosition();
                if (EditAdapter.this.isAddItem(toPosition)) {
                    toPosition--;
                }
                this.mToPosition = toPosition;
                if (fromPosition != toPosition) {
                    int i;
                    if (fromPosition < toPosition) {
                        for (i = fromPosition; i < toPosition; i++) {
                            Collections.swap(EditAdapter.this.getList(), i, i + 1);
                            EditAdapter.this.swapSelectItem(i, i + 1);
                        }
                    } else {
                        for (i = fromPosition; i > toPosition; i--) {
                            Collections.swap(EditAdapter.this.getList(), i, i - 1);
                            EditAdapter.this.swapSelectItem(i, i - 1);
                        }
                    }
                    EditAdapter.this.notifyItemMoved(fromPosition, toPosition);
                }
                return true;
            }

            public void onSwiped(ViewHolder viewHolder, int direction) {
            }
        };
        this.mSelectedItemPosition = -1;
    }

    protected int getLayoutId() {
        return R.layout.movie_layout_edit_item;
    }

    protected EditHolder getHolder(View view) {
        return new EditHolder(view);
    }

    public int getItemCount() {
        if (this.mList == null) {
            return 0;
        }
        return super.getItemCount() + 1;
    }

    public int getListSize() {
        return this.mList == null ? 0 : this.mList.size();
    }

    public ImageEntity getItemData(int pos) {
        if (pos < 0) {
            return null;
        }
        if (pos >= this.mList.size()) {
            return ITEM_ADD;
        }
        return (ImageEntity) super.getItemData(pos);
    }

    public boolean isAddItem(int position) {
        ImageEntity itemData = getItemData(position);
        return itemData != null && TextUtils.equals(itemData.image, "ITEM_ADD");
    }

    public Callback getCallback() {
        return this.mCallback;
    }

    private void swapSelectItem(int a, int b) {
        if (this.mSelectedItemPosition == a) {
            this.mSelectedItemPosition = b;
        } else if (this.mSelectedItemPosition == b) {
            this.mSelectedItemPosition = a;
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.mOnActionListener = onActionListener;
    }

    private void doScaleAnimal(View view, boolean isIncrease) {
        float f;
        float f2 = 1.34f;
        ObjectAnimator animator = new ObjectAnimator();
        Property property = View.SCALE_X;
        float[] fArr = new float[2];
        fArr[0] = view.getScaleX();
        if (isIncrease) {
            f = 1.34f;
        } else {
            f = 1.0f;
        }
        fArr[1] = f;
        PropertyValuesHolder x = PropertyValuesHolder.ofFloat(property, fArr);
        Property property2 = View.SCALE_Y;
        float[] fArr2 = new float[2];
        fArr2[0] = view.getScaleY();
        if (!isIncrease) {
            f2 = 1.0f;
        }
        fArr2[1] = f2;
        PropertyValuesHolder y = PropertyValuesHolder.ofFloat(property2, fArr2);
        animator.setTarget(view);
        animator.setValues(new PropertyValuesHolder[]{x, y});
        animator.setInterpolator(new CubicEaseOutInterpolator());
        animator.setDuration(200);
        animator.start();
    }
}
