.class public Lcom/miui/gallery/cleaner/ScanResult$Builder;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDescription:I

.field private mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

.field private mPaths:[Ljava/lang/String;

.field private mSize:J

.field private mTitle:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    .line 100
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/gallery/cleaner/ScanResult;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 144
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the type must set."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mTitle:I

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the title must not be empty."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_1
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mAction:I

    if-nez v1, :cond_2

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the action must not be empty."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    if-nez v1, :cond_3

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the OnScanResultClickListener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_3
    new-instance v0, Lcom/miui/gallery/cleaner/ScanResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;-><init>(Lcom/miui/gallery/cleaner/ScanResult$1;)V

    .line 161
    .local v0, "result":Lcom/miui/gallery/cleaner/ScanResult;
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$102(Lcom/miui/gallery/cleaner/ScanResult;I)I

    .line 162
    iget-wide v4, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mSize:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_4

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/cleaner/ScanResult;->access$202(Lcom/miui/gallery/cleaner/ScanResult;J)J

    .line 163
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mPaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$302(Lcom/miui/gallery/cleaner/ScanResult;[Ljava/lang/String;)[Ljava/lang/String;

    .line 164
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mCount:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$402(Lcom/miui/gallery/cleaner/ScanResult;I)I

    .line 165
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mTitle:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$502(Lcom/miui/gallery/cleaner/ScanResult;I)I

    .line 166
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mDescription:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$602(Lcom/miui/gallery/cleaner/ScanResult;I)I

    .line 167
    iget v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mAction:I

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$702(Lcom/miui/gallery/cleaner/ScanResult;I)I

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    invoke-static {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->access$802(Lcom/miui/gallery/cleaner/ScanResult;Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 169
    return-object v0

    .line 162
    :cond_4
    iget-wide v2, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mSize:J

    goto :goto_0
.end method

.method public setAction(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mAction:I

    .line 130
    return-object p0
.end method

.method public setCount(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mCount:I

    .line 120
    return-object p0
.end method

.method public setDescription(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "description"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mDescription:I

    .line 135
    return-object p0
.end method

.method public setOnScanResultClickListener(Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 140
    return-object p0
.end method

.method public setPaths([Ljava/lang/String;)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mPaths:[Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public setSize(J)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mSize:J

    .line 110
    return-object p0
.end method

.method public setTitle(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "title"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mTitle:I

    .line 125
    return-object p0
.end method

.method public setType(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult$Builder;->mType:I

    .line 105
    return-object p0
.end method
