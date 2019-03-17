.class public Lcom/alibaba/imagesearch/PailitaoSettings;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/imagesearch/PailitaoSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPEN_TYPE_H5:I = 0x2

.field public static final OPEN_TYPE_NATIVE:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public cpsOnly:Z

.field public enableFullscreenLoadingPage:Z

.field public enableRefreshButton:Z

.field public enableWhiteStatusBar:Z

.field public forceHttps:Z

.field public loadingPageBGColor:I

.field public logEnabled:Z

.field public notInCN:Z

.field public openType:I

.field public statusBarColor:I

.field public vendorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/imagesearch/PailitaoSettings$1;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/PailitaoSettings$1;-><init>()V

    sput-object v0, Lcom/alibaba/imagesearch/PailitaoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->cpsOnly:Z

    iput-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->forceHttps:Z

    iput-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableRefreshButton:Z

    iput-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableWhiteStatusBar:Z

    const v0, -0xc0c0d

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->statusBarColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->loadingPageBGColor:I

    iput-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableFullscreenLoadingPage:Z

    const/16 v0, 0x100

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->cpsOnly:Z

    iput-boolean v2, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->forceHttps:Z

    iput-boolean v2, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableRefreshButton:Z

    iput-boolean v2, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableWhiteStatusBar:Z

    const v0, -0xc0c0d

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->statusBarColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->loadingPageBGColor:I

    iput-boolean v2, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableFullscreenLoadingPage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->vendorId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->brand:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->logEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->notInCN:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->cpsOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->forceHttps:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableRefreshButton:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableWhiteStatusBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->statusBarColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->loadingPageBGColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableFullscreenLoadingPage:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6
.end method

.method public static defaultSettings()Lcom/alibaba/imagesearch/PailitaoSettings;
    .locals 2

    new-instance v0, Lcom/alibaba/imagesearch/PailitaoSettings;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;-><init>()V

    const/16 v1, 0x100

    iput v1, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->brand:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->brand:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOpenType()I
    .locals 1

    iget v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    return v0
.end method

.method public getTaokePid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVendorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->vendorId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->vendorId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTaokePid(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->a:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/model/InitState;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlibcTradeSDK is initialized. update taokePid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;-><init>()V

    iget-object v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-static {v0}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->setTaokeParams(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taokePid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vendorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " brand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notInCN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->notInCN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " logEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->logEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notInCN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->notInCN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cpsOnly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->cpsOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forceHttps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->forceHttps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enableRefreshButton = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableRefreshButton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enableWhiteStatusBar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableWhiteStatusBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sdkVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.4.6.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->vendorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->brand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->logEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->notInCN:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->cpsOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->forceHttps:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableRefreshButton:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableWhiteStatusBar:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->statusBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->loadingPageBGColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableFullscreenLoadingPage:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6
.end method
