.class final Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;
.super Ljava/lang/Object;
.source "nexExternalModuleManager.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:[Lcom/nexstreaming/nexeditorsdk/module/UserField;

.field private final i:I


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;I)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->a:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->b:Ljava/lang/String;

    .line 143
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->c:Ljava/lang/String;

    .line 144
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->description()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->d:Ljava/lang/String;

    .line 145
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->auth()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->e:Ljava/lang/String;

    .line 146
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->version()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->g:I

    .line 147
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->userFields()[Lcom/nexstreaming/nexeditorsdk/module/UserField;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->h:[Lcom/nexstreaming/nexeditorsdk/module/UserField;

    .line 148
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->format()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->f:Ljava/lang/String;

    .line 149
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->i:I

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;ILcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$1;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;I)V

    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->i:I

    return v0
.end method


# virtual methods
.method public auth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public format()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public userFields()[Lcom/nexstreaming/nexeditorsdk/module/UserField;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->h:[Lcom/nexstreaming/nexeditorsdk/module/UserField;

    return-object v0
.end method

.method public uuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public version()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->g:I

    return v0
.end method
