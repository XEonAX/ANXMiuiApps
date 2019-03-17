.class public Lcom/miui/gallery/model/PersistentResponse;
.super Lcom/miui/gallery/dao/base/Entity;
.source "PersistentResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/model/PersistentResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExpireMillis:J

.field private mLastVisitTime:J

.field private mResponse:Ljava/lang/String;

.field private mUpdateTime:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/miui/gallery/model/PersistentResponse$1;

    invoke-direct {v0}, Lcom/miui/gallery/model/PersistentResponse$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/model/PersistentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mUrl:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mResponse:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mUpdateTime:J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mLastVisitTime:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mId:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mExpireMillis:J

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "updateTime"    # J
    .param p5, "lastVisitTime"    # J
    .param p7, "expireMillis"    # J

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/miui/gallery/model/PersistentResponse;->mUrl:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/miui/gallery/model/PersistentResponse;->mResponse:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/miui/gallery/model/PersistentResponse;->mUpdateTime:J

    .line 45
    iput-wide p5, p0, Lcom/miui/gallery/model/PersistentResponse;->mLastVisitTime:J

    .line 46
    iput-wide p7, p0, Lcom/miui/gallery/model/PersistentResponse;->mExpireMillis:J

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getExpireMillis()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mExpireMillis:J

    return-wide v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string/jumbo v1, "url"

    const-string v2, "TEXT"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/model/PersistentResponse;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    const-string v1, "response"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/model/PersistentResponse;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "updateTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/model/PersistentResponse;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "lastVisitTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/model/PersistentResponse;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "expireMillis"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/model/PersistentResponse;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method protected getUniqueConstraints()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mUpdateTime:J

    return-wide v0
.end method

.method protected onConvertToContents(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 116
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/miui/gallery/model/PersistentResponse;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "response"

    iget-object v1, p0, Lcom/miui/gallery/model/PersistentResponse;->mResponse:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "updateTime"

    iget-wide v2, p0, Lcom/miui/gallery/model/PersistentResponse;->mUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v0, "lastVisitTime"

    iget-wide v2, p0, Lcom/miui/gallery/model/PersistentResponse;->mLastVisitTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v0, "expireMillis"

    iget-wide v2, p0, Lcom/miui/gallery/model/PersistentResponse;->mExpireMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    return-void
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 107
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/miui/gallery/model/PersistentResponse;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mUrl:Ljava/lang/String;

    .line 108
    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/miui/gallery/model/PersistentResponse;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mResponse:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "updateTime"

    invoke-static {p1, v0}, Lcom/miui/gallery/model/PersistentResponse;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mUpdateTime:J

    .line 110
    const-string v0, "lastVisitTime"

    invoke-static {p1, v0}, Lcom/miui/gallery/model/PersistentResponse;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mLastVisitTime:J

    .line 111
    const-string v0, "expireMillis"

    invoke-static {p1, v0}, Lcom/miui/gallery/model/PersistentResponse;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mExpireMillis:J

    .line 112
    return-void
.end method

.method public setLastVisitTime(J)V
    .locals 1
    .param p1, "lastVisitTime"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/miui/gallery/model/PersistentResponse;->mLastVisitTime:J

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mLastVisitTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v0, p0, Lcom/miui/gallery/model/PersistentResponse;->mExpireMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    return-void
.end method
