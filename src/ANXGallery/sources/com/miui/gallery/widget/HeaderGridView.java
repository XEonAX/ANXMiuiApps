package com.miui.gallery.widget;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.Iterator;

public class HeaderGridView extends GridView {
    private ArrayList<FixedViewInfo> mFooterViewInfos = new ArrayList();
    private ArrayList<FixedViewInfo> mHeaderViewInfos = new ArrayList();

    private static class FixedViewInfo {
        public Object data;
        public boolean isSelectable;
        public ViewGroup viewContainer;

        private FixedViewInfo() {
        }
    }

    private static class HeaderViewGridAdapter extends BaseAdapter implements Filterable {
        static final ArrayList<FixedViewInfo> EMPTY_INFO_LIST = new ArrayList();
        private final ListAdapter mAdapter;
        boolean mAreAllFixedViewsSelectable;
        private final DataSetObservable mDataSetObservable = new DataSetObservable();
        ArrayList<FixedViewInfo> mFooterViewInfos;
        ArrayList<FixedViewInfo> mHeaderViewInfos;
        private final boolean mIsFilterable;
        private int mLastVisibleItemHeight;
        private int mNumColumns = 1;

        public HeaderViewGridAdapter(ArrayList<FixedViewInfo> headerViewInfos, ArrayList<FixedViewInfo> footerViewInfos, ListAdapter adapter) {
            boolean z = true;
            this.mAdapter = adapter;
            this.mIsFilterable = adapter instanceof Filterable;
            if (headerViewInfos == null) {
                throw new IllegalArgumentException("headerViewInfos cannot be null");
            }
            if (headerViewInfos == null) {
                this.mHeaderViewInfos = EMPTY_INFO_LIST;
            } else {
                this.mHeaderViewInfos = headerViewInfos;
            }
            if (footerViewInfos == null) {
                this.mFooterViewInfos = EMPTY_INFO_LIST;
            } else {
                this.mFooterViewInfos = footerViewInfos;
            }
            if (!(areAllListInfosSelectable(this.mHeaderViewInfos) && areAllListInfosSelectable(this.mFooterViewInfos))) {
                z = false;
            }
            this.mAreAllFixedViewsSelectable = z;
        }

        public int getHeadersCount() {
            return this.mHeaderViewInfos.size();
        }

        public int getFootersCount() {
            return this.mFooterViewInfos.size();
        }

        public boolean isEmpty() {
            return (this.mAdapter == null || this.mAdapter.isEmpty()) && getHeadersCount() == 0 && getFootersCount() == 0;
        }

        public void setNumColumns(int numColumns) {
            if (numColumns < 1) {
                throw new IllegalArgumentException("Number of columns must be 1 or more");
            } else if (this.mNumColumns != numColumns) {
                this.mNumColumns = numColumns;
                notifyDataSetChanged();
            }
        }

        private boolean areAllListInfosSelectable(ArrayList<FixedViewInfo> infos) {
            if (infos != null) {
                Iterator it = infos.iterator();
                while (it.hasNext()) {
                    if (!((FixedViewInfo) it.next()).isSelectable) {
                        return false;
                    }
                }
            }
            return true;
        }

        private int getAlignedAdapterCount() {
            int adapterCount = this.mAdapter.getCount();
            return adapterCount > 0 ? ((this.mNumColumns + adapterCount) - 1) - ((adapterCount - 1) % this.mNumColumns) : 0;
        }

        private View getPlaceholderView(View convertView, ViewGroup parent, int height) {
            if (convertView == null) {
                convertView = new View(parent.getContext());
            }
            convertView.setVisibility(4);
            convertView.setMinimumHeight(height);
            return convertView;
        }

        public int getCount() {
            int count = (getHeadersCount() + getFootersCount()) * this.mNumColumns;
            if (this.mAdapter != null) {
                return count + getAlignedAdapterCount();
            }
            return count;
        }

        public boolean areAllItemsEnabled() {
            if (this.mAdapter == null) {
                return true;
            }
            if (this.mAreAllFixedViewsSelectable && this.mAdapter.areAllItemsEnabled()) {
                return true;
            }
            return false;
        }

        public boolean isEnabled(int position) {
            boolean z = true;
            int numHeadersAndPlaceholders = getHeadersCount() * this.mNumColumns;
            if (position >= numHeadersAndPlaceholders) {
                int adjPosition = position - numHeadersAndPlaceholders;
                int alignedAdapterCount = getAlignedAdapterCount();
                if (this.mAdapter != null) {
                    if (adjPosition < this.mAdapter.getCount()) {
                        return this.mAdapter.isEnabled(adjPosition);
                    }
                    if (adjPosition < alignedAdapterCount) {
                        return false;
                    }
                }
                position = adjPosition - alignedAdapterCount;
                if (position < getFootersCount() * this.mNumColumns) {
                    if (!(position % this.mNumColumns == 0 && ((FixedViewInfo) this.mFooterViewInfos.get(position / this.mNumColumns)).isSelectable)) {
                        z = false;
                    }
                    return z;
                }
                throw new ArrayIndexOutOfBoundsException(position);
            } else if (position % this.mNumColumns == 0 && ((FixedViewInfo) this.mHeaderViewInfos.get(position / this.mNumColumns)).isSelectable) {
                return true;
            } else {
                return false;
            }
        }

        public Object getItem(int position) {
            int numHeadersAndPlaceholders = getHeadersCount() * this.mNumColumns;
            if (position >= numHeadersAndPlaceholders) {
                int adjPosition = position - numHeadersAndPlaceholders;
                int alignedAdapterCount = getAlignedAdapterCount();
                if (this.mAdapter != null) {
                    if (adjPosition < this.mAdapter.getCount()) {
                        return this.mAdapter.getItem(adjPosition);
                    }
                    if (adjPosition < alignedAdapterCount) {
                        return null;
                    }
                }
                position = adjPosition - alignedAdapterCount;
                if (position >= getFootersCount() * this.mNumColumns) {
                    throw new ArrayIndexOutOfBoundsException(position);
                } else if (position % this.mNumColumns == 0) {
                    return ((FixedViewInfo) this.mFooterViewInfos.get(position / this.mNumColumns)).data;
                } else {
                    return null;
                }
            } else if (position % this.mNumColumns == 0) {
                return ((FixedViewInfo) this.mHeaderViewInfos.get(position / this.mNumColumns)).data;
            } else {
                return null;
            }
        }

        public long getItemId(int position) {
            int numHeadersAndPlaceholders = getHeadersCount() * this.mNumColumns;
            if (this.mAdapter != null && position >= numHeadersAndPlaceholders) {
                int adjPosition = position - numHeadersAndPlaceholders;
                if (adjPosition < this.mAdapter.getCount()) {
                    return this.mAdapter.getItemId(adjPosition);
                }
            }
            return -1;
        }

        public boolean hasStableIds() {
            if (this.mAdapter != null) {
                return this.mAdapter.hasStableIds();
            }
            return false;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            int numHeadersAndPlaceholders = getHeadersCount() * this.mNumColumns;
            if (position < numHeadersAndPlaceholders) {
                View headerViewContainer = ((FixedViewInfo) this.mHeaderViewInfos.get(position / this.mNumColumns)).viewContainer;
                if (position % this.mNumColumns != 0) {
                    return getPlaceholderView(convertView, parent, headerViewContainer.getHeight());
                }
                headerViewContainer.setVisibility(0);
                return headerViewContainer;
            }
            int adjPosition = position - numHeadersAndPlaceholders;
            int alignedAdapterCount = getAlignedAdapterCount();
            if (this.mAdapter != null) {
                if (adjPosition < this.mAdapter.getCount()) {
                    View view = this.mAdapter.getView(adjPosition, convertView, parent);
                    if (adjPosition % this.mNumColumns == 0) {
                        view.measure(MeasureSpec.makeMeasureSpec(-1, 0), MeasureSpec.makeMeasureSpec(-2, 0));
                        this.mLastVisibleItemHeight = view.getMeasuredHeight();
                    }
                    return view;
                } else if (adjPosition < alignedAdapterCount) {
                    return getPlaceholderView(convertView, parent, this.mLastVisibleItemHeight);
                }
            }
            position = adjPosition - alignedAdapterCount;
            if (position < getFootersCount() * this.mNumColumns) {
                View footerViewContainer = ((FixedViewInfo) this.mFooterViewInfos.get(position / this.mNumColumns)).viewContainer;
                if (position % this.mNumColumns != 0) {
                    return getPlaceholderView(convertView, parent, footerViewContainer.getHeight());
                }
                footerViewContainer.setVisibility(0);
                return footerViewContainer;
            }
            throw new ArrayIndexOutOfBoundsException(position);
        }

        public int getItemViewType(int position) {
            int numHeadersAndPlaceholders = getHeadersCount() * this.mNumColumns;
            if (position >= numHeadersAndPlaceholders || position % this.mNumColumns == 0) {
                if (this.mAdapter != null && position >= numHeadersAndPlaceholders) {
                    int adjPosition = position - numHeadersAndPlaceholders;
                    if (adjPosition < this.mAdapter.getCount()) {
                        return this.mAdapter.getItemViewType(adjPosition);
                    }
                    if (adjPosition < getAlignedAdapterCount()) {
                        return this.mAdapter.getViewTypeCount();
                    }
                }
                position -= getAlignedAdapterCount() + numHeadersAndPlaceholders;
                if (position >= getFootersCount() * this.mNumColumns || position % this.mNumColumns == 0) {
                    return -2;
                }
                if (this.mAdapter != null) {
                    return this.mAdapter.getViewTypeCount();
                }
                return 1;
            } else if (this.mAdapter != null) {
                return this.mAdapter.getViewTypeCount();
            } else {
                return 1;
            }
        }

        public int getViewTypeCount() {
            if (this.mAdapter != null) {
                return this.mAdapter.getViewTypeCount() + 1;
            }
            return 2;
        }

        public void registerDataSetObserver(DataSetObserver observer) {
            this.mDataSetObservable.registerObserver(observer);
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(observer);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver observer) {
            this.mDataSetObservable.unregisterObserver(observer);
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(observer);
            }
        }

        public Filter getFilter() {
            if (this.mIsFilterable) {
                return ((Filterable) this.mAdapter).getFilter();
            }
            return null;
        }

        public void notifyDataSetChanged() {
            this.mDataSetObservable.notifyChanged();
        }
    }

    private void initHeaderGridView() {
        super.setClipChildren(false);
        setGravity(3);
    }

    public HeaderGridView(Context context) {
        super(context);
        initHeaderGridView();
    }

    public HeaderGridView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initHeaderGridView();
    }

    public HeaderGridView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        initHeaderGridView();
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        ListAdapter adapter = getAdapter();
        if (adapter != null && (adapter instanceof HeaderViewGridAdapter)) {
            ((HeaderViewGridAdapter) adapter).setNumColumns(getNumColumns());
        }
    }

    public void setClipChildren(boolean clipChildren) {
    }

    public int getHeaderViewCount() {
        return this.mHeaderViewInfos.size();
    }

    public int getFooterViewCount() {
        return this.mFooterViewInfos.size();
    }

    public void setAdapter(ListAdapter adapter) {
        if (this.mHeaderViewInfos.size() > 0 || this.mFooterViewInfos.size() > 0) {
            HeaderViewGridAdapter hadapter = new HeaderViewGridAdapter(this.mHeaderViewInfos, this.mFooterViewInfos, adapter);
            int numColumns = getNumColumns();
            if (numColumns > 1) {
                hadapter.setNumColumns(numColumns);
            }
            super.setAdapter(hadapter);
            return;
        }
        super.setAdapter(adapter);
    }
}
