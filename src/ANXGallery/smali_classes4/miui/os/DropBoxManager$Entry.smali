.class public Lmiui/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:J

.field private final DX:[B

.field private final DY:Landroid/os/ParcelFileDescriptor;

.field private final ae:Ljava/lang/String;

.field private final mB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    new-instance v0, Lmiui/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Lmiui/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Lmiui/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->ae:Ljava/lang/String;

    .line 116
    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->DW:J

    .line 117
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    .line 118
    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    .line 119
    const/4 p1, 0x1

    iput p1, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    .line 120
    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-eqz p1, :cond_3

    .line 157
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p4, :cond_1

    move v1, v2

    nop

    :cond_1
    if-ne v0, v1, :cond_2

    .line 161
    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->ae:Ljava/lang/String;

    .line 162
    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->DW:J

    .line 163
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    .line 164
    iput-object p4, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    .line 165
    iput p5, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    .line 166
    return-void

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad flags: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-eqz p1, :cond_1

    .line 174
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->ae:Ljava/lang/String;

    .line 177
    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->DW:J

    .line 178
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    .line 179
    const/high16 p1, 0x10000000

    invoke-static {p4, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    .line 180
    iput p5, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    .line 181
    return-void

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad flags: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-eqz p1, :cond_1

    .line 125
    if-eqz p4, :cond_0

    .line 127
    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->ae:Ljava/lang/String;

    .line 128
    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->DW:J

    .line 129
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    .line 130
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    .line 131
    const/4 p1, 0x2

    iput p1, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    .line 132
    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "text == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;J[BI)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    if-eqz p1, :cond_3

    .line 140
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p4, :cond_1

    move v1, v2

    nop

    :cond_1
    if-ne v0, v1, :cond_2

    .line 144
    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->ae:Ljava/lang/String;

    .line 145
    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->DW:J

    .line 146
    iput-object p4, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    .line 147
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    .line 148
    iput p5, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    .line 149
    return-void

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad flags: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 185
    :try_start_0
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    :cond_0
    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 251
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 195
    iget v0, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 233
    :goto_0
    iget v1, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    :cond_1
    return-object v0

    .line 231
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 6

    .line 202
    iget v0, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 203
    :cond_0
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    iget-object v3, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    array-length v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 205
    :cond_1
    nop

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    if-nez v0, :cond_3

    .line 219
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    :cond_2
    :goto_0
    return-object v1

    .line 209
    :cond_3
    :try_start_2
    new-array v3, p1, [B

    .line 210
    nop

    .line 211
    nop

    .line 212
    move v4, v2

    move v5, v4

    :goto_1
    if-ltz v4, :cond_4

    add-int/2addr v5, v4

    if-ge v5, p1, :cond_4

    .line 213
    sub-int v4, p1, v5

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_1

    .line 215
    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 215
    :cond_5
    :goto_2
    return-object p1

    .line 219
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 216
    :catch_2
    move-exception p1

    goto :goto_5

    .line 219
    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :cond_6
    :goto_4
    throw p1

    .line 216
    :catch_4
    move-exception p1

    move-object v0, v1

    .line 217
    :goto_5
    nop

    .line 219
    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 217
    :cond_7
    :goto_6
    return-object v1
.end method

.method public getTimeMillis()J
    .locals 2

    .line 192
    iget-wide v0, p0, Lmiui/os/DropBoxManager$Entry;->DW:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->ae:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-wide v0, p0, Lmiui/os/DropBoxManager$Entry;->DW:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 258
    iget v0, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->DY:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 261
    :cond_0
    iget p2, p0, Lmiui/os/DropBoxManager$Entry;->mB:I

    or-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object p2, p0, Lmiui/os/DropBoxManager$Entry;->DX:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 264
    :goto_0
    return-void
.end method
