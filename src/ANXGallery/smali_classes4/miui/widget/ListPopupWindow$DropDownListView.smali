.class Lmiui/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field static final UC:I = -0x1


# instance fields
.field private UD:Z

.field private UE:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1154
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1155
    iput-boolean p2, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->UE:Z

    .line 1156
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1157
    return-void
.end method

.method static synthetic a(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I
    .locals 0

    .line 1107
    invoke-direct {p0, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->h(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0

    .line 1107
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->UD:Z

    return p1
.end method

.method private h(IZ)I
    .locals 4

    .line 1169
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1170
    const/4 v1, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 1174
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 1175
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1176
    if-eqz p2, :cond_1

    .line 1177
    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1178
    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1179
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1182
    :cond_1
    add-int/lit8 p2, v2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1183
    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1184
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1188
    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    .line 1191
    :cond_3
    return p1

    .line 1189
    :cond_4
    :goto_2
    return v1

    .line 1193
    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    .line 1196
    :cond_6
    return p1

    .line 1194
    :cond_7
    :goto_3
    return v1

    .line 1171
    :cond_8
    :goto_4
    return v1
.end method


# virtual methods
.method final a(IIIII)I
    .locals 10

    .line 1267
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result p2

    .line 1268
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result p3

    .line 1269
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v0

    .line 1270
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1272
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 1274
    if-nez v2, :cond_0

    .line 1275
    add-int/2addr p2, p3

    return p2

    .line 1279
    :cond_0
    add-int/2addr p2, p3

    .line 1280
    const/4 p3, 0x0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    .line 1281
    goto :goto_0

    .line 1285
    :cond_1
    move v0, p3

    .line 1287
    :goto_0
    nop

    .line 1288
    nop

    .line 1289
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1290
    const/4 v3, 0x0

    move v5, p2

    move p2, p3

    move v4, p2

    move v7, v4

    move-object v6, v3

    :goto_1
    if-ge p2, v1, :cond_8

    .line 1291
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 1292
    if-eq v8, v4, :cond_2

    .line 1293
    nop

    .line 1294
    nop

    .line 1296
    move-object v6, v3

    move v4, v8

    :cond_2
    invoke-interface {v2, p2, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1300
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1301
    if-lez v8, :cond_3

    .line 1302
    const/high16 v9, 0x40000000    # 2.0f

    .line 1303
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_2

    .line 1305
    :cond_3
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1307
    :goto_2
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 1309
    if-lez p2, :cond_4

    .line 1311
    add-int/2addr v5, v0

    .line 1314
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    .line 1316
    if-lt v5, p4, :cond_6

    .line 1322
    if-ltz p5, :cond_5

    if-le p2, p5, :cond_5

    if-lez v7, :cond_5

    if-eq v5, p4, :cond_5

    .line 1323
    nop

    .line 1319
    move p4, v7

    goto :goto_3

    .line 1324
    :cond_5
    nop

    .line 1319
    :goto_3
    return p4

    .line 1327
    :cond_6
    if-ltz p5, :cond_7

    if-lt p2, p5, :cond_7

    .line 1328
    nop

    .line 1290
    move v7, v5

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1334
    :cond_8
    return v5
.end method

.method public hasFocus()Z
    .locals 1

    .line 1233
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->UE:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1213
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->UE:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 1223
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->UE:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->UE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->UD:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
