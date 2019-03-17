.class public Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;
.super Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;
.source "BaseMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/BaseMessageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InsertTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object p2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;->mContentValues:Landroid/content/ContentValues;

    .line 102
    return-void
.end method

.method private doInsert(Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/discovery/BaseMessageOperator;->sDiscoveryMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    .local v0, "ret":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected execute(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;->doInsert(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic execute(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 95
    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;->execute(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method protected prepareData()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method protected bridge synthetic prepareData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;->prepareData()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
