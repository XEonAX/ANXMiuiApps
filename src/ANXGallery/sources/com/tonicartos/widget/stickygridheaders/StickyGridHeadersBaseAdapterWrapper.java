package com.tonicartos.widget.stickygridheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.miui.gallery.util.Log;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView.FixedViewInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class StickyGridHeadersBaseAdapterWrapper extends BaseAdapter {
    private final Context mContext;
    private DataSetObserver mDataSetObserver = new DataSetObserver() {
        public void onChanged() {
            Log.i("StickyGridHeadersBaseAdapterWrapper", "data changed");
            StickyGridHeadersBaseAdapterWrapper.this.genDataMap();
            StickyGridHeadersBaseAdapterWrapper.this.notifyDataSetChanged();
        }

        public void onInvalidated() {
            Log.i("StickyGridHeadersBaseAdapterWrapper", "data invalidated");
            StickyGridHeadersBaseAdapterWrapper.this.notifyDataSetInvalidated();
            StickyGridHeadersBaseAdapterWrapper.this.mPositionMap.clear();
            StickyGridHeadersBaseAdapterWrapper.this.mSectionMap.clear();
            StickyGridHeadersBaseAdapterWrapper.this.mSectionStartItemIndexMap.clear();
        }
    };
    private final StickyGridHeadersBaseAdapter mDelegate;
    private List<FixedViewInfo> mFooterViewInfos = Collections.emptyList();
    private StickyGridHeadersGridView mGridView;
    private List<FixedViewInfo> mHeaderViewInfos = Collections.emptyList();
    private View mLastHeaderViewSeen;
    private View mLastViewSeen;
    private ArrayList<Integer> mPositionMap;
    private ArrayList<Integer> mSectionMap;
    private ArrayList<Integer> mSectionStartItemIndexMap;

    protected class FillerView extends View {
        private View mMeasureTarget;

        public FillerView(Context context) {
            super(context);
        }

        public void setMeasureTarget(View lastViewSeen) {
            this.mMeasureTarget = lastViewSeen;
        }

        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(this.mMeasureTarget.getMeasuredHeight(), 1073741824));
        }
    }

    protected class HeaderFillerView extends FrameLayout {
        private int mHeaderId;

        public HeaderFillerView(Context context) {
            super(context);
        }

        public int getHeaderId() {
            return this.mHeaderId;
        }

        public void setHeaderId(int headerId) {
            this.mHeaderId = headerId;
        }

        protected LayoutParams generateDefaultLayoutParams() {
            return new LayoutParams(-1, -1);
        }

        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            View v = (View) getTag();
            ViewGroup.LayoutParams params = v.getLayoutParams();
            if (params == null) {
                params = generateDefaultLayoutParams();
                v.setLayoutParams(params);
            }
            if (v.getVisibility() != 8) {
                v.measure(getChildMeasureSpec(MeasureSpec.makeMeasureSpec(StickyGridHeadersBaseAdapterWrapper.this.mGridView.getWidth(), 1073741824), 0, params.width), getChildMeasureSpec(MeasureSpec.makeMeasureSpec(0, 0), 0, params.height));
            }
            setMeasuredDimension(MeasureSpec.getSize(widthMeasureSpec), v.getMeasuredHeight());
        }
    }

    protected class Position {
        protected int mHeader;
        protected int mPosition;

        protected Position(int position, int header) {
            this.mPosition = position;
            this.mHeader = header;
        }
    }

    protected class VisibleInfo {
        protected final int mFirstPosition;
        protected final int mVisibleCount;

        public VisibleInfo(int firstPosition, int visibleCount) {
            this.mFirstPosition = firstPosition;
            this.mVisibleCount = visibleCount;
        }
    }

    public StickyGridHeadersBaseAdapterWrapper(Context context, StickyGridHeadersGridView gridView, StickyGridHeadersBaseAdapter delegate, List<FixedViewInfo> headerViewInfos, List<FixedViewInfo> footerViewInfos) {
        this.mContext = context;
        this.mDelegate = delegate;
        this.mGridView = gridView;
        this.mPositionMap = new ArrayList();
        this.mSectionMap = new ArrayList();
        this.mSectionStartItemIndexMap = new ArrayList();
        if (headerViewInfos != null) {
            this.mHeaderViewInfos = headerViewInfos;
        }
        if (footerViewInfos != null) {
            this.mFooterViewInfos = footerViewInfos;
        }
        genDataMap();
        delegate.registerDataSetObserver(this.mDataSetObserver);
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    public void setHeader(List<FixedViewInfo> viewInfos) {
        if (viewInfos != null) {
            this.mHeaderViewInfos = viewInfos;
        } else {
            this.mHeaderViewInfos = Collections.emptyList();
        }
        genDataMap();
    }

    public void setFooter(List<FixedViewInfo> viewInfos) {
        if (viewInfos != null) {
            this.mFooterViewInfos = viewInfos;
        } else {
            this.mFooterViewInfos = Collections.emptyList();
        }
        genDataMap();
    }

    public int getCount() {
        return this.mPositionMap.size();
    }

    public Object getItem(int position) throws ArrayIndexOutOfBoundsException {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -1 || adapterPosition.mPosition == -2 || adapterPosition.mPosition == -4 || adapterPosition.mPosition == -5) {
            return null;
        }
        return this.mDelegate.getItem(adapterPosition.mPosition);
    }

    public long getItemId(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -2 || adapterPosition.mPosition == -4) {
            return -1;
        }
        if (adapterPosition.mPosition == -1) {
            return -2;
        }
        if (adapterPosition.mPosition == -3) {
            return -3;
        }
        if (adapterPosition.mPosition == -5) {
            return -4;
        }
        return this.mDelegate.getItemId(adapterPosition.mPosition);
    }

    public int getItemViewType(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -4) {
            return 3;
        }
        if (adapterPosition.mPosition == -2) {
            return 1;
        }
        if (adapterPosition.mPosition == -1) {
            return 0;
        }
        if (adapterPosition.mPosition == -3) {
            return 2;
        }
        if (adapterPosition.mPosition == -5) {
            return 4;
        }
        int itemViewType = this.mDelegate.getItemViewType(adapterPosition.mPosition);
        return itemViewType != -1 ? itemViewType + 5 : itemViewType;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        Position adapterPosition = translatePosition(position);
        View v;
        View view;
        if (adapterPosition.mPosition == -2) {
            v = getHeaderFillerView(adapterPosition.mHeader, convertView, parent);
            view = this.mDelegate.getHeaderView(adapterPosition.mHeader - this.mHeaderViewInfos.size(), (View) v.getTag(), parent);
            this.mGridView.detachHeader((View) v.getTag());
            v.setTag(view);
            this.mGridView.attachHeader(view);
            convertView = v;
            this.mLastHeaderViewSeen = v;
            v.forceLayout();
            return convertView;
        } else if (adapterPosition.mPosition == -4) {
            v = getHeaderFillerView(adapterPosition.mHeader, convertView, parent);
            if (adapterPosition.mHeader < this.mHeaderViewInfos.size()) {
                view = ((FixedViewInfo) this.mHeaderViewInfos.get(adapterPosition.mHeader)).view;
            } else {
                view = ((FixedViewInfo) this.mFooterViewInfos.get((adapterPosition.mHeader - this.mDelegate.getNumHeaders()) - this.mHeaderViewInfos.size())).view;
            }
            v.setTag(view);
            convertView = v;
            this.mLastHeaderViewSeen = v;
            v.forceLayout();
            return convertView;
        } else if (adapterPosition.mPosition == -3) {
            convertView = getFillerView(convertView, parent, this.mLastHeaderViewSeen);
            convertView.forceLayout();
            return convertView;
        } else if (adapterPosition.mPosition == -1) {
            return getFillerView(convertView, parent, this.mLastViewSeen);
        } else {
            if (adapterPosition.mPosition == -5) {
                v = getHeaderFillerView(adapterPosition.mHeader - this.mHeaderViewInfos.size(), convertView, parent);
                view = this.mDelegate.getDividerView(adapterPosition.mHeader, (View) v.getTag(), parent);
                this.mGridView.detachHeader((View) v.getTag());
                v.setTag(view);
                this.mGridView.attachHeader(view);
                convertView = v;
                this.mLastHeaderViewSeen = v;
                v.forceLayout();
                return convertView;
            }
            convertView = this.mDelegate.getView(adapterPosition.mPosition, convertView, parent);
            this.mLastViewSeen = convertView;
            return convertView;
        }
    }

    public int getViewTypeCount() {
        return this.mDelegate.getViewTypeCount() + 5;
    }

    public boolean hasStableIds() {
        return this.mDelegate.hasStableIds();
    }

    public boolean isEmpty() {
        return this.mDelegate.isEmpty();
    }

    public boolean isEnabled(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -1 || adapterPosition.mPosition == -3 || adapterPosition.mPosition == -4 || adapterPosition.mPosition == -5) {
            return false;
        }
        return this.mDelegate.isEnabled(adapterPosition.mPosition);
    }

    private FillerView getFillerView(View convertView, ViewGroup parent, View lastViewSeen) {
        FillerView fillerView = (FillerView) convertView;
        if (fillerView == null) {
            fillerView = new FillerView(this.mContext);
        }
        fillerView.setMeasureTarget(lastViewSeen);
        return fillerView;
    }

    private HeaderFillerView getHeaderFillerView(int headerPosition, View convertView, ViewGroup parent) {
        HeaderFillerView headerFillerView = (HeaderFillerView) convertView;
        if (headerFillerView == null) {
            headerFillerView = new HeaderFillerView(this.mContext);
        }
        headerFillerView.setHeaderId(headerPosition);
        return headerFillerView;
    }

    protected long getHeaderId(int position) {
        return (long) translatePosition(position).mHeader;
    }

    protected View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (this.mDelegate.getNumHeaders() == 0) {
            return null;
        }
        return this.mDelegate.getHeaderView(translatePosition(position).mHeader - this.mHeaderViewInfos.size(), convertView, parent);
    }

    protected Position translatePosition(int position) {
        if (position >= this.mPositionMap.size()) {
            return new Position(-1, 0);
        }
        return new Position(((Integer) this.mPositionMap.get(position)).intValue(), ((Integer) this.mSectionMap.get(position)).intValue());
    }

    void onColumnChanged() {
        genDataMap();
        notifyDataSetChanged();
    }

    public int getHeaderNum() {
        return this.mDelegate.getNumHeaders();
    }

    public int getCountForHeader(int headerIndex) {
        return this.mDelegate.getCountForHeader(headerIndex);
    }

    public int getGroupItemStartIndex(int headerIndex) {
        return ((Integer) this.mSectionStartItemIndexMap.get(headerIndex)).intValue();
    }

    public int getGroupIndexByItemIndex(int itemIndex) {
        if (this.mSectionStartItemIndexMap != null) {
            int i = 1;
            while (i < this.mSectionStartItemIndexMap.size()) {
                if (((Integer) this.mSectionStartItemIndexMap.get(i)).intValue() > itemIndex) {
                    return i - 1;
                }
                i++;
            }
            if (i == this.mSectionStartItemIndexMap.size()) {
                return i - 1;
            }
        }
        return 0;
    }

    public int getItemPositionByItemIndex(int itemIndex) {
        if (this.mPositionMap != null) {
            for (int i = 0; i < this.mPositionMap.size(); i++) {
                if (((Integer) this.mPositionMap.get(i)).intValue() == itemIndex) {
                    return i;
                }
            }
        }
        return 0;
    }

    private void genDataMap() {
        int columns;
        int j;
        int header;
        int upperBound;
        int placeHolder;
        Log.d("StickyGridHeadersBaseAdapterWrapper", "generate data map");
        if (this.mGridView.getNumColumns() == -1) {
            columns = this.mGridView.getRequestedNumColumns();
        } else {
            columns = this.mGridView.getNumColumns();
        }
        int idealCapacity = (((this.mDelegate.getCount() + (this.mDelegate.getNumHeaders() * columns)) + (Math.max(this.mDelegate.getNumHeaders(), 1) * (columns - 1))) + (this.mFooterViewInfos.size() * columns)) + (this.mHeaderViewInfos.size() * columns);
        if (this.mDelegate.shouldDrawDivider()) {
            idealCapacity += this.mDelegate.getNumHeaders() * columns;
        }
        this.mPositionMap.ensureCapacity(idealCapacity);
        this.mSectionMap.ensureCapacity(idealCapacity);
        this.mSectionStartItemIndexMap.ensureCapacity(this.mDelegate.getNumHeaders());
        this.mPositionMap.clear();
        this.mSectionMap.clear();
        this.mSectionStartItemIndexMap.clear();
        int i = 0;
        if (!this.mHeaderViewInfos.isEmpty()) {
            j = 0;
            while (j < this.mHeaderViewInfos.size()) {
                this.mPositionMap.add(Integer.valueOf(-4));
                this.mSectionMap.add(Integer.valueOf(i));
                for (header = 1; header < columns; header++) {
                    this.mPositionMap.add(Integer.valueOf(-3));
                    this.mSectionMap.add(Integer.valueOf(i));
                }
                j++;
                i++;
            }
        }
        if (this.mDelegate.getNumHeaders() == 0) {
            for (j = 0; j < this.mDelegate.getCount(); j++) {
                this.mSectionMap.add(Integer.valueOf(0));
                this.mPositionMap.add(Integer.valueOf(j));
            }
            this.mSectionStartItemIndexMap.add(Integer.valueOf(0));
        } else {
            int item = 0;
            for (j = 0; j < this.mDelegate.getNumHeaders(); j++) {
                this.mPositionMap.add(Integer.valueOf(-2));
                this.mSectionMap.add(Integer.valueOf(i));
                this.mSectionStartItemIndexMap.add(Integer.valueOf(item));
                for (header = 1; header < columns; header++) {
                    this.mPositionMap.add(Integer.valueOf(-3));
                    this.mSectionMap.add(Integer.valueOf(i));
                }
                for (int offset = 0; offset < this.mDelegate.getCountForHeader(j); offset++) {
                    this.mSectionMap.add(Integer.valueOf(i));
                    this.mPositionMap.add(Integer.valueOf(item));
                    item++;
                }
                upperBound = (((this.mDelegate.getCountForHeader(j) + columns) - 1) / columns) * columns;
                for (placeHolder = this.mDelegate.getCountForHeader(j); placeHolder < upperBound; placeHolder++) {
                    this.mPositionMap.add(Integer.valueOf(-1));
                    this.mSectionMap.add(Integer.valueOf(i));
                }
                if (this.mDelegate.shouldDrawDivider()) {
                    this.mPositionMap.add(Integer.valueOf(-5));
                    this.mSectionMap.add(Integer.valueOf(i));
                    for (int divider = 1; divider < columns; divider++) {
                        this.mPositionMap.add(Integer.valueOf(-3));
                        this.mSectionMap.add(Integer.valueOf(i));
                    }
                }
                i++;
            }
        }
        if (!this.mFooterViewInfos.isEmpty()) {
            if (this.mDelegate.getNumHeaders() == 0) {
                upperBound = (((this.mDelegate.getCount() + columns) - 1) / columns) * columns;
                for (placeHolder = this.mDelegate.getCount(); placeHolder < upperBound; placeHolder++) {
                    this.mPositionMap.add(Integer.valueOf(-1));
                    this.mSectionMap.add(Integer.valueOf(i));
                }
            }
            j = 0;
            while (j < this.mFooterViewInfos.size()) {
                this.mPositionMap.add(Integer.valueOf(-4));
                this.mSectionMap.add(Integer.valueOf(i));
                for (header = 1; header < columns; header++) {
                    this.mPositionMap.add(Integer.valueOf(-3));
                    this.mSectionMap.add(Integer.valueOf(i));
                }
                j++;
                i++;
            }
        }
    }

    protected VisibleInfo translateVisibleInfo(int firstPos, int visibleCount) {
        int dataFirstPos = -1;
        int dataVisibleCount = 0;
        int length = Math.min(firstPos + visibleCount, this.mPositionMap.size());
        for (int i = firstPos; i < length; i++) {
            int position = ((Integer) this.mPositionMap.get(i)).intValue();
            if (position >= 0) {
                if (dataFirstPos < 0) {
                    dataFirstPos = position;
                }
                dataVisibleCount++;
            }
        }
        return new VisibleInfo(dataFirstPos, dataVisibleCount);
    }
}
