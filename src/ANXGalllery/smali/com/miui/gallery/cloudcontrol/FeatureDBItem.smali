.class public Lcom/miui/gallery/cloudcontrol/FeatureDBItem;
.super Lcom/miui/gallery/cloudcontrol/FeatureProfile;
.source "FeatureDBItem.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "featureName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "strategy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->PROJECTION:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;-><init>()V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/miui/gallery/cloudcontrol/FeatureDBItem;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 31
    new-instance v0, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;-><init>()V

    .line 32
    .local v0, "item":Lcom/miui/gallery/cloudcontrol/FeatureDBItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->setId(J)V

    .line 33
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->setName(Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->setStatus(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->setStrategy(Ljava/lang/String;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->mId:J

    .line 45
    return-void
.end method
