.class Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/projection/DeviceListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceSelectorAdapter"
.end annotation


# instance fields
.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p2, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mDeviceList:Ljava/util/ArrayList;

    .line 387
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 388
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 402
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 407
    if-nez p2, :cond_0

    .line 408
    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiui/R$layout;->select_dialog_singlechoice:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 410
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 411
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    return-object p2
.end method
