.class Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/component/module/ModuleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleEntry"
.end annotation


# instance fields
.field public dH:Lmiui/module/Module;

.field public dI:Ljava/lang/String;

.field public dJ:Ljava/lang/String;

.field public dK:Ljava/lang/String;

.field public dL:Z


# direct methods
.method public constructor <init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    .line 42
    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dI:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dJ:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dK:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dL:Z

    .line 46
    return-void
.end method
