.class Lmiui/util/DirectIndexedFile$Builder$IndexData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private HI:Lmiui/util/DirectIndexedFile$Builder$Item;

.field private HJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/util/DirectIndexedFile$Builder$Item;",
            ">;"
        }
    .end annotation
.end field

.field private HL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private HM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private HO:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private HP:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HJ:Ljava/util/HashMap;

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HM:Ljava/util/ArrayList;

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HL:Ljava/util/ArrayList;

    .line 1179
    new-array p1, p1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HO:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .line 1180
    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .locals 0

    .line 1165
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .locals 0

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HM:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .locals 0

    .line 1165
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HI:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0

    .line 1165
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HP:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HO:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .locals 0

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HL:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;
    .locals 0

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HJ:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HP:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static synthetic f(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .locals 0

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HI:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object p0
.end method
