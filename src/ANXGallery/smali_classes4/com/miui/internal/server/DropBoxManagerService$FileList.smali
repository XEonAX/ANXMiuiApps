.class final Lcom/miui/internal/server/DropBoxManagerService$FileList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/internal/server/DropBoxManagerService$FileList;",
        ">;"
    }
.end annotation


# instance fields
.field public io:I

.field public final ip:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/miui/internal/server/DropBoxManagerService$EntryFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 422
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/internal/server/DropBoxManagerService$FileList;)I
    .locals 3

    .line 426
    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v1, p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    sub-int/2addr p1, v0

    return p1

    .line 427
    :cond_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return v0

    .line 428
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 429
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-le v1, p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 430
    :cond_3
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 420
    check-cast p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/server/DropBoxManagerService$FileList;->a(Lcom/miui/internal/server/DropBoxManagerService$FileList;)I

    move-result p1

    return p1
.end method
