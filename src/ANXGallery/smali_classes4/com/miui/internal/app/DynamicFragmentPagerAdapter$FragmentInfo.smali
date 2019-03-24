.class Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentInfo"
.end annotation


# instance fields
.field cZ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field da:Landroid/app/Fragment;

.field db:Landroid/os/Bundle;

.field dc:Landroid/app/ActionBar$Tab;

.field dd:Z

.field final synthetic de:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->de:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    .line 309
    iput-object p3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cZ:Ljava/lang/Class;

    .line 310
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    .line 311
    iput-object p4, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->db:Landroid/os/Bundle;

    .line 312
    iput-object p5, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->dc:Landroid/app/ActionBar$Tab;

    .line 313
    iput-boolean p6, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->dd:Z

    .line 314
    return-void
.end method
