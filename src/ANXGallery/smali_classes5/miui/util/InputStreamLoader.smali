.class public Lmiui/util/InputStreamLoader;
.super Ljava/lang/Object;
.source "InputStreamLoader.java"


# instance fields
.field mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field private mContext:Landroid/content/Context;

.field private mFileAccessable:Lmiui/util/FileAccessable;

.field private mInputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    .line 39
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "zipPath"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lmiui/util/FileAccessable;)V
    .locals 0
    .param p1, "fileAccessable"    # Lmiui/util/FileAccessable;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mFileAccessable:Lmiui/util/FileAccessable;

    .line 52
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 88
    :try_start_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 92
    :cond_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_1
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    return-void
.end method

.method public get()Ljava/io/InputStream;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 58
    :try_start_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mFileAccessable:Lmiui/util/FileAccessable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mFileAccessable:Lmiui/util/FileAccessable;

    invoke-interface {v0}, Lmiui/util/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 66
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 72
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_4
    :goto_0
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 77
    :goto_1
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 79
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_5

    .line 80
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    .line 83
    :cond_5
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method
