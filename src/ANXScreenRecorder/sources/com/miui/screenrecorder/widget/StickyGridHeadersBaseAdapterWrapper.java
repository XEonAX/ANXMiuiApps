package com.miui.screenrecorder.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.miui.screenrecorder.compat.Lists;
import com.miui.screenrecorder.widget.StickyGridHeadersGridView.FixedViewInfo;
import java.util.ArrayList;

public class StickyGridHeadersBaseAdapterWrapper extends BaseAdapter {
    protected static final int ID_FILLER = -2;
    protected static final int ID_HEADER = -1;
    protected static final int ID_HEADER_FILLER = -3;
    protected static final int POSITION_FILLER = -1;
    protected static final int POSITION_FOOTER = -4;
    protected static final int POSITION_HEADER = -2;
    protected static final int POSITION_HEADER_FILLER = -3;
    protected static final int VIEW_TYPE_FILLER = 0;
    protected static final int VIEW_TYPE_HEADER = 1;
    protected static final int VIEW_TYPE_HEADER_FILLER = 2;
    protected static final int VIEW_TYPE_LIST_FOOTER = 3;
    private static final int sNumViewTypes = 4;
    private final Context mContext;
    private DataSetObserver mDataSetObserver = new DataSetObserver() {
        public void onChanged() {
            StickyGridHeadersBaseAdapterWrapper.this.genDataMap();
            StickyGridHeadersBaseAdapterWrapper.this.notifyDataSetChanged();
        }

        public void onInvalidated() {
            StickyGridHeadersBaseAdapterWrapper.this.notifyDataSetInvalidated();
            StickyGridHeadersBaseAdapterWrapper.this.mPositionMap.clear();
            StickyGridHeadersBaseAdapterWrapper.this.mSectionMap.clear();
            StickyGridHeadersBaseAdapterWrapper.this.mSectionStartItemIndexMap.clear();
        }
    };
    private final StickyGridHeadersBaseAdapter mDelegate;
    private ArrayList<FixedViewInfo> mFooterViewInfos = Lists.newArrayList();
    private StickyGridHeadersGridView mGridView;
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

        public FillerView(Context context, AttributeSet attrs) {
            super(context, attrs);
        }

        public FillerView(Context context, AttributeSet attrs, int defStyle) {
            super(context, attrs, defStyle);
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

        public HeaderFillerView(Context context, AttributeSet attrs) {
            super(context, attrs);
        }

        public HeaderFillerView(Context context, AttributeSet attrs, int defStyle) {
            super(context, attrs, defStyle);
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
            if (v != null) {
                ViewGroup.LayoutParams params = v.getLayoutParams();
                if (params == null) {
                    params = generateDefaultLayoutParams();
                    v.setLayoutParams(params);
                }
                if (v.getVisibility() != 8) {
                    try {
                        v.measure(getChildMeasureSpec(MeasureSpec.makeMeasureSpec(StickyGridHeadersBaseAdapterWrapper.this.mGridView.getWidth(), 1073741824), 0, params.width), getChildMeasureSpec(MeasureSpec.makeMeasureSpec(0, 0), 0, params.height));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                setMeasuredDimension(MeasureSpec.getSize(widthMeasureSpec), v.getMeasuredHeight());
            }
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

    public StickyGridHeadersBaseAdapterWrapper(Context context, StickyGridHeadersGridView gridView, StickyGridHeadersBaseAdapter delegate) {
        this.mContext = context;
        this.mDelegate = delegate;
        this.mGridView = gridView;
        this.mPositionMap = new ArrayList();
        this.mSectionMap = new ArrayList();
        this.mSectionStartItemIndexMap = new ArrayList();
        genDataMap();
        delegate.registerDataSetObserver(this.mDataSetObserver);
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    public void setFooter(ArrayList<FixedViewInfo> viewInfos) {
        this.mFooterViewInfos = viewInfos;
    }

    public int getCount() {
        return this.mPositionMap.size();
    }

    public Object getItem(int position) throws ArrayIndexOutOfBoundsException {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -1 || adapterPosition.mPosition == -2) {
            return null;
        }
        return this.mDelegate.getItem(adapterPosition.mPosition);
    }

    public long getItemId(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -2 || adapterPosition.mPosition == POSITION_FOOTER) {
            return -1;
        }
        if (adapterPosition.mPosition == -1) {
            return -2;
        }
        if (adapterPosition.mPosition == -3) {
            return -3;
        }
        return this.mDelegate.getItemId(adapterPosition.mPosition);
    }

    public int getItemViewType(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == POSITION_FOOTER) {
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
        int itemViewType = this.mDelegate.getItemViewType(adapterPosition.mPosition);
        return itemViewType != -1 ? itemViewType + 4 : itemViewType;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        Position adapterPosition = translatePosition(position);
        View v;
        View view;
        if (adapterPosition.mPosition == -2) {
            v = getHeaderFillerView(adapterPosition.mHeader, convertView, parent);
            view = this.mDelegate.getHeaderView(adapterPosition.mHeader, (View) v.getTag(), parent);
            this.mGridView.detachHeader((View) v.getTag());
            v.setContentDescription(view.getContentDescription());
            v.setTag(view);
            this.mGridView.attachHeader(view);
            convertView = v;
            this.mLastHeaderViewSeen = v;
            v.forceLayout();
            return convertView;
        } else if (adapterPosition.mPosition == POSITION_FOOTER) {
            v = getHeaderFillerView(adapterPosition.mHeader, convertView, parent);
            view = ((FixedViewInfo) this.mFooterViewInfos.get(adapterPosition.mHeader - this.mDelegate.getNumHeaders())).view;
            this.mGridView.detachHeader((View) v.getTag());
            v.setTag(view);
            this.mGridView.attachHeader(view);
            convertView = v;
            v.forceLayout();
            return convertView;
        } else if (adapterPosition.mPosition == -3) {
            convertView = getFillerView(convertView, parent, this.mLastHeaderViewSeen);
            convertView.forceLayout();
            return convertView;
        } else if (adapterPosition.mPosition == -1) {
            return getFillerView(convertView, parent, this.mLastViewSeen);
        } else {
            convertView = this.mDelegate.getView(adapterPosition.mPosition, convertView, parent);
            this.mLastViewSeen = convertView;
            return convertView;
        }
    }

    public int getViewTypeCount() {
        return this.mDelegate.getViewTypeCount() + 4;
    }

    public StickyGridHeadersBaseAdapter getWrappedAdapter() {
        return this.mDelegate;
    }

    public boolean hasStableIds() {
        return this.mDelegate.hasStableIds();
    }

    public boolean isEmpty() {
        return this.mDelegate.isEmpty();
    }

    public boolean isEnabled(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -1 || adapterPosition.mPosition == -2) {
            return false;
        }
        return this.mDelegate.isEnabled(adapterPosition.mPosition);
    }

    private FillerView getFillerView(View convertView, ViewGroup parent, View lastViewSeen) {
        FillerView fillerView = (FillerView) convertView;
        if (fillerView == null) {
            fillerView = new FillerView(this.mContext);
        }
        fillerView.setEnabled(false);
        fillerView.setImportantForAccessibility(2);
        fillerView.setMeasureTarget(lastViewSeen);
        return fillerView;
    }

    private HeaderFillerView getHeaderFillerView(int headerPosition, View convertView, ViewGroup parent) {
        HeaderFillerView headerFillerView = (HeaderFillerView) convertView;
        if (headerFillerView == null) {
            headerFillerView = new HeaderFillerView(this.mContext);
        }
        headerFillerView.setFocusable(true);
        headerFillerView.setFocusableInTouchMode(true);
        headerFillerView.setContentDescription("");
        return headerFillerView;
    }

    protected long getHeaderId(int position) {
        return (long) translatePosition(position).mHeader;
    }

    protected View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (this.mDelegate.getNumHeaders() == 0) {
            return null;
        }
        return this.mDelegate.getHeaderView(translatePosition(position).mHeader, convertView, parent);
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
        if (this.mGridView.getNumColumns() == -1) {
            columns = this.mGridView.getRequestedNumColumns();
        } else {
            columns = this.mGridView.getNumColumns();
        }
        int idealCapacity = (this.mDelegate.getCount() + (this.mDelegate.getNumHeaders() * columns)) + (this.mDelegate.getNumHeaders() * (columns - 1));
        this.mPositionMap.ensureCapacity(idealCapacity);
        this.mSectionMap.ensureCapacity(idealCapacity);
        this.mSectionStartItemIndexMap.ensureCapacity(this.mDelegate.getNumHeaders());
        this.mPositionMap.clear();
        this.mSectionMap.clear();
        this.mSectionStartItemIndexMap.clear();
        int i;
        if (this.mDelegate.getNumHeaders() == 0) {
            for (i = 0; i < this.mDelegate.getCount(); i++) {
                this.mSectionMap.add(Integer.valueOf(0));
                this.mPositionMap.add(Integer.valueOf(i));
            }
            this.mSectionStartItemIndexMap.add(Integer.valueOf(0));
            return;
        }
        int header;
        int item = 0;
        i = 0;
        while (i < this.mDelegate.getNumHeaders()) {
            this.mPositionMap.add(Integer.valueOf(-2));
            this.mSectionMap.add(Integer.valueOf(i));
            this.mSectionStartItemIndexMap.add(Integer.valueOf(item));
            for (header = 1; header < columns; header++) {
                this.mPositionMap.add(Integer.valueOf(-3));
                this.mSectionMap.add(Integer.valueOf(i));
            }
            for (int offset = 0; offset < this.mDelegate.getCountForHeader(i); offset++) {
                this.mSectionMap.add(Integer.valueOf(i));
                this.mPositionMap.add(Integer.valueOf(item));
                item++;
            }
            int upperBound = (((this.mDelegate.getCountForHeader(i) + columns) - 1) / columns) * columns;
            for (int placeHolder = this.mDelegate.getCountForHeader(i); placeHolder < upperBound; placeHolder++) {
                this.mPositionMap.add(Integer.valueOf(-1));
                this.mSectionMap.add(Integer.valueOf(i));
            }
            i++;
        }
        if (this.mFooterViewInfos != null) {
            int j = 0;
            while (j < this.mFooterViewInfos.size()) {
                this.mPositionMap.add(Integer.valueOf(POSITION_FOOTER));
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
}
