.class public Lcom/alibaba/alibclinkpartner/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/alibaba/alibclinkpartner/d/d/c;

.field public static b:Lcom/alibaba/alibclinkpartner/d/a/d;

.field public static c:Lcom/alibaba/alibclinkpartner/f/a;

.field public static d:Lcom/alibaba/alibclinkpartner/d/c/a;

.field public static e:Lcom/alibaba/alibclinkpartner/d/b/b;

.field public static f:Lcom/alibaba/alibclinkpartner/plugin/a;

.field private static g:Landroid/app/Application;

.field private static h:Lcom/alibaba/alibclinkpartner/param/b;

.field private static volatile i:Z

.field private static j:Z

.field private static k:I

.field private static volatile l:Z

.field private static volatile m:I

.field private static n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v1, Lcom/alibaba/alibclinkpartner/b;->i:Z

    sput-boolean v1, Lcom/alibaba/alibclinkpartner/b;->j:Z

    sput v0, Lcom/alibaba/alibclinkpartner/b;->k:I

    sput-boolean v0, Lcom/alibaba/alibclinkpartner/b;->l:Z

    sput v0, Lcom/alibaba/alibclinkpartner/b;->m:I

    const/4 v0, 0x2

    sput v0, Lcom/alibaba/alibclinkpartner/b;->n:I

    return-void
.end method

.method public static a()Lcom/alibaba/alibclinkpartner/param/b;
    .locals 1

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->h:Lcom/alibaba/alibclinkpartner/param/b;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/alibaba/alibclinkpartner/b;->n:I

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lcom/alibaba/alibclinkpartner/b;->g:Landroid/app/Application;

    return-void
.end method

.method public static a(Lcom/alibaba/alibclinkpartner/param/b;)V
    .locals 0

    sput-object p0, Lcom/alibaba/alibclinkpartner/b;->h:Lcom/alibaba/alibclinkpartner/param/b;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/alibaba/alibclinkpartner/b;->i:Z

    return-void
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/alibaba/alibclinkpartner/b;->k:I

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/alibaba/alibclinkpartner/b;->j:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/alibclinkpartner/b;->i:Z

    return v0
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lcom/alibaba/alibclinkpartner/b;->m:I

    return-void
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/alibaba/alibclinkpartner/b;->l:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/alibclinkpartner/b;->j:Z

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.0.0"

    return-object v0
.end method

.method public static e()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->g:Landroid/app/Application;

    return-object v0
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/alibaba/alibclinkpartner/b;->n:I

    return v0
.end method

.method public static g()I
    .locals 1

    sget v0, Lcom/alibaba/alibclinkpartner/b;->k:I

    return v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lcom/alibaba/alibclinkpartner/b;->m:I

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/alibclinkpartner/b;->l:Z

    return v0
.end method
