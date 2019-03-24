.class Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataItemHolder"
.end annotation


# instance fields
.field private HF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private HG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic HH:Lmiui/util/DirectIndexedFile$Builder;


# direct methods
.method private constructor <init>(Lmiui/util/DirectIndexedFile$Builder;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HH:Lmiui/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HF:Ljava/util/HashMap;

    .line 1144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HG:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$Builder;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0

    .line 1142
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/util/DirectIndexedFile$Builder;)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I
    .locals 0

    .line 1142
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1142
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->e(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;
    .locals 0

    .line 1142
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->dn()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private dn()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HG:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .line 1147
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1148
    if-nez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1150
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HF:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HG:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_0
    return-object v0
.end method

.method private size()I
    .locals 1

    .line 1157
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->HG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
