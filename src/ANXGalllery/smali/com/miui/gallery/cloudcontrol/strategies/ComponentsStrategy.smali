.class public Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "ComponentsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;,
        Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
    }
.end annotation


# static fields
.field public static final CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/cloudcontrol/Merger",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPriority:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "component-priority"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityInternational:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "component-priority-international"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;",
            ">;"
        }
    .end annotation
.end field

.field private mShareComponents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share-components"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;",
            ">;"
        }
    .end annotation
.end field

.field private mShareComponentsInternational:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share-components-international"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$1;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->MATCH_ORDER:Ljava/util/Comparator;

    .line 242
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$2;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriorityInternational:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriorityInternational:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriority:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriority:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;-><init>()V

    .line 52
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    .line 54
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.twitter.android"

    const-string v4, "com.twitter.android.composer.ComposerActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.instagram.android"

    const-string v4, "com.instagram.android.activity.ShareHandlerActivity"

    invoke-direct {v2, v3, v4, v6}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.whatsapp"

    const-string v4, "com.whatsapp.ContactPicker"

    invoke-direct {v2, v3, v4, v7}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-direct {v2, v3, v4, v8}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.facebook.orca"

    const-string v4, "com.facebook.messenger.intents.ShareIntentHandler"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "org.telegram.messenger"

    const-string v4, "org.telegram.ui.LaunchActivity"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.bsb.hike"

    const-string v4, "com.bsb.hike.ui.ComposeChatActivity"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.twitter.android"

    const-string v4, "com.twitter.android.DMActivity"

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.xiaomi.midrop"

    const-string v4, "com.xiaomi.midrop.sender.ui.TransmissionActivity"

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriorityInternational:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriority:Ljava/util/ArrayList;

    .line 76
    return-object v0

    .line 64
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponents:Ljava/util/List;

    .line 65
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponents:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponents:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v2, v3, v4, v6}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponents:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.qzone"

    const-string v4, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-direct {v2, v3, v4, v7}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponents:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;

    const-string v3, "com.tencent.mobileqq"

    const-string v4, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-direct {v2, v3, v4, v8}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriorityInternational:Ljava/util/ArrayList;

    .line 98
    .local v1, "priorityList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;

    .line 100
    .local v0, "item":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->initMathOrder()V

    goto :goto_1

    .line 95
    .end local v0    # "item":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
    .end local v1    # "priorityList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriority:Ljava/util/ArrayList;

    .restart local v1    # "priorityList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    goto :goto_0

    .line 102
    :cond_1
    sget-object v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->MATCH_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    :cond_2
    return-void
.end method

.method public getComponentPriority()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriorityInternational:Ljava/util/ArrayList;

    .line 47
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    :goto_0
    if-eqz v0, :cond_1

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    :goto_1
    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriority:Ljava/util/ArrayList;

    .restart local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public getShareComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    .line 36
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;>;"
    :goto_0
    if-eqz v0, :cond_1

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;>;"
    :goto_1
    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponents:Ljava/util/List;

    .restart local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;>;"
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentsStrategy{mShareComponents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShareComponentsInternational="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mShareComponentsInternational:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriority:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriorityInternational="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->mPriorityInternational:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
