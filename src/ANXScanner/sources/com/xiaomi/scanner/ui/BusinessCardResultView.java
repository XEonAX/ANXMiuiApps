package com.xiaomi.scanner.ui;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.bean.BusinessCardItem;
import com.xiaomi.scanner.bean.BusinessClickBean;
import com.xiaomi.scanner.dialog.ActionDialog;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.Util;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BusinessCardResultView extends RelativeLayout implements OnClickListener {
    private List<BusinessCardItem> businessCardItems;
    private TextView businessContent;
    private FinishClick finishClick;
    private ImageView imageBC;
    private Set<Integer> indexSet;
    private View shadow;

    public interface FinishClick {
        void onFinishClick();
    }

    private class CustomClickSpannable extends ClickableSpan {
        private BusinessClickBean ocrClickBean;

        public CustomClickSpannable(BusinessClickBean ocrClickBean) {
            this.ocrClickBean = ocrClickBean;
        }

        public void updateDrawState(TextPaint ds) {
            ds.setLinearText(false);
            ds.setColor(BusinessCardResultView.this.getResources().getColor(R.color.blue_ocr_click));
        }

        public void onClick(View widget) {
            if (this.ocrClickBean != null) {
                BusinessCardResultView.this.reportBlueClick(this.ocrClickBean.type);
                ActionDialog.showOcrActionDialog(BusinessCardResultView.this.getContext(), this.ocrClickBean);
            }
        }
    }

    public void setFinishClick(FinishClick finishClick) {
        this.finishClick = finishClick;
    }

    public BusinessCardResultView(@NonNull Context context) {
        this(context, null, -1);
    }

    public BusinessCardResultView(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public BusinessCardResultView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.indexSet = new HashSet();
        init();
    }

    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 8) {
            this.indexSet.clear();
        }
    }

    protected void init() {
        int i;
        LayoutInflater.from(getContext()).inflate(R.layout.activity_business_card_result, this);
        findViewById(R.id.back).setOnClickListener(this);
        findViewById(R.id.btn_copy).setOnClickListener(this);
        findViewById(R.id.btn_new_contacts).setOnClickListener(this);
        this.businessContent = (TextView) findViewById(R.id.business_result_text);
        this.imageBC = (ImageView) findViewById(R.id.iv_crop_business_card_image);
        this.shadow = findViewById(R.id.iv_shadow);
        if (VERSION.SDK_INT >= 26) {
            this.businessContent.setTextIsSelectable(true);
        }
        setBackgroundResource(R.color.black);
        if (!Util.hasNativageBar || Utils.isFullScreenDevice()) {
            i = 0;
        } else {
            i = Utils.getNavigationBarHeight();
        }
        setPadding(0, 0, 0, i);
    }

    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    public void updateView(Bitmap bitmap, List<BusinessCardItem> items) {
        if (!(bitmap == null || bitmap.isRecycled())) {
            this.imageBC.setImageBitmap(bitmap);
        }
        showResult(items);
    }

    protected void copy() {
        ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, textForCopy()));
        Toast.makeText(getContext(), R.string.copy_text_success, 0).show();
    }

    private String textForCopy() {
        StringBuilder contentBuild = new StringBuilder();
        if (!(this.businessCardItems == null || this.businessCardItems.size() == 0)) {
            for (int i = 0; i < this.businessCardItems.size(); i++) {
                BusinessCardItem info = (BusinessCardItem) this.businessCardItems.get(i);
                contentBuild.append(info.itemName).append("：").append(info.itemValue);
                if (i != this.businessCardItems.size() - 1) {
                    contentBuild.append("\n");
                }
            }
        }
        return contentBuild.toString();
    }

    public void showResult(List<BusinessCardItem> cardItemList) {
        this.businessCardItems = cardItemList;
        if (cardItemList != null && cardItemList.size() != 0) {
            String content = getStringFromCard(cardItemList);
            SpannableStringBuilder builder = new SpannableStringBuilder(content);
            for (BusinessCardItem item : cardItemList) {
                if (hasCanClick(item.itemType)) {
                    addItemClickListenerAndColor(item.itemValue, item.itemType, builder, content);
                }
            }
            this.businessContent.setMovementMethod(LinkMovementMethod.getInstance());
            this.businessContent.setText(builder);
            this.businessContent.post(new Runnable() {
                public void run() {
                    BusinessCardResultView.this.shadow.setVisibility(BusinessCardResultView.this.businessContent.getLineCount() > 15 ? 0 : 8);
                }
            });
        }
    }

    private boolean hasCanClick(int type) {
        return type == 15 || type == 14 || type == 2 || type == 4 || type == 18 || type == 17 || type == 3;
    }

    private String getStringFromCard(List<BusinessCardItem> cardItemInfos) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < cardItemInfos.size(); i++) {
            BusinessCardItem item = (BusinessCardItem) cardItemInfos.get(i);
            builder.append(item.itemName).append(" : ").append(item.itemValue);
            if (i != cardItemInfos.size() - 1) {
                builder.append("\n");
            }
        }
        return builder.toString();
    }

    private void addItemClickListenerAndColor(String text, int type, SpannableStringBuilder builder, String content) {
        int startIndex = content.indexOf(text);
        if (this.indexSet.contains(Integer.valueOf(startIndex))) {
            startIndex = content.lastIndexOf(text);
        }
        if (startIndex >= 0) {
            this.indexSet.add(Integer.valueOf(startIndex));
            builder.setSpan(new CustomClickSpannable(new BusinessClickBean(type, text)), startIndex, startIndex + text.length(), 34);
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.back /*2131558527*/:
                if (this.finishClick != null) {
                    this.finishClick.onFinishClick();
                }
                trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_RESULT_BACK);
                return;
            case R.id.btn_new_contacts /*2131558530*/:
                trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_CREATE_CONTACT);
                Utils.newContact(this.businessCardItems, (Activity) getContext());
                return;
            case R.id.btn_copy /*2131558531*/:
                copy();
                trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_COPY_CLICK);
                return;
            default:
                return;
        }
    }

    private void reportBlueClick(int type) {
        String id = null;
        switch (type) {
            case 2:
            case 3:
                id = UsageStatistics.KEY_BUSINESS_CARD_PHONE_CLICK;
                break;
            case 4:
                id = UsageStatistics.KEY_BUSINESS_CARD_EMAIL_CLICK;
                break;
            case 14:
            case 15:
                id = UsageStatistics.KEY_BUSINESS_CARD_ADDRESS_CLICK;
                break;
            case 17:
                id = UsageStatistics.KEY_BUSINESS_CARD_LINK_CLICK;
                break;
            case 18:
                id = UsageStatistics.KEY_BUSINESS_CARD_DATE_CLICK;
                break;
        }
        if (id != null) {
            trackBCEvent(id);
        }
    }

    private void trackBCEvent(String key) {
        if (getContext() instanceof ScanActivity) {
            UsageStatistics.trackBCEvent(((ScanActivity) getContext()).isOnlyBusinessCardScan(), key);
        }
    }
}
