.class final Lcom/nexstreaming/nexeditorsdk/nexCollage;
.super Ljava/lang/Object;
.source "nexCollage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:F

.field private g:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

.field private h:I

.field private i:F

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

.field private x:Landroid/content/Context;

.field private y:Ljava/util/Date;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "nexCollage"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->f:F

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->p:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    .line 100
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->t:I

    .line 101
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->u:I

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->z:Z

    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexCollage;Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexCollage;)Lcom/nexstreaming/nexeditorsdk/nexEngine;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3f

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 186
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;

    .line 188
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexCollage;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexCollage;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->y:Ljava/util/Date;

    return-object p1
.end method

.method public static a(Landroid/graphics/Rect;F)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 159
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    const-string/jumbo v2, "shrinkToAspect(%f %f)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 164
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 165
    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 174
    :goto_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shrinkToAspect: "

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 170
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 171
    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Rect;II)V
    .locals 2

    .prologue
    const v1, 0x186a0

    .line 143
    iget v0, p0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, p1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 144
    iget v0, p0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, p2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 145
    iget v0, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, p1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 146
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, p2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 147
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 198
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 199
    invoke-static {p1}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->x:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;-><init>(Ljava/io/File;ZLandroid/content/Context;)V

    .line 202
    invoke-static {p1, v0}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;)V

    .line 205
    :cond_0
    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Landroid/graphics/RectF;)V

    .line 206
    return-object v1
.end method

.method static synthetic b(Lcom/nexstreaming/nexeditorsdk/nexCollage;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    return-object v0
.end method

.method public static b(Landroid/graphics/Rect;II)V
    .locals 2

    .prologue
    const v1, 0x186a0

    .line 150
    iget v0, p0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 151
    iget v0, p0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 152
    iget v0, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 153
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 154
    return-void
.end method

.method static synthetic c(Lcom/nexstreaming/nexeditorsdk/nexCollage;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->y:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic d(Lcom/nexstreaming/nexeditorsdk/nexCollage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->p:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->i:F

    return v0
.end method

.method protected a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexEngine;ILandroid/content/Context;Z)Ljava/lang/String;
    .locals 22

    .prologue
    .line 211
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    const-string v5, "apply2Project sources(%d %d %d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->k:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexCollage;->x:Landroid/content/Context;

    .line 215
    if-nez p3, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->h:I

    move/from16 p3, v0

    .line 219
    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 220
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 221
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isMotionTrackedVideo()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isAssetResource()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 219
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 226
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 227
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isAssetResource()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 225
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    :cond_5
    const/4 v4, 0x0

    .line 233
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 234
    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v5

    if-lez v5, :cond_8

    .line 235
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 236
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 237
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 240
    :cond_6
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v6

    if-le v4, v6, :cond_7

    .line 242
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    goto :goto_2

    .line 241
    :cond_7
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v4

    goto :goto_3

    .line 245
    :cond_8
    if-nez p3, :cond_9

    move/from16 p3, v4

    .line 251
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTopDrawInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 252
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setTemplateApplyMode(I)V

    .line 254
    new-instance v13, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    invoke-direct {v13}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;-><init>()V

    .line 255
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setID(I)V

    .line 256
    const v4, 0x10001

    invoke-virtual {v13, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setSubEffectID(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->n:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEffectID(Ljava/lang/String;)V

    .line 258
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartTime(I)V

    .line 259
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndTime(I)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTopDrawInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->y:Ljava/util/Date;

    .line 265
    const/4 v5, 0x1

    .line 266
    const/4 v4, 0x0

    .line 267
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v7, v5

    move-object v5, v4

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/a;

    .line 268
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 269
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/nexstreaming/nexeditorsdk/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-static {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 271
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 272
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->b()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 273
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setMotionTrackedVideo(Z)V

    :cond_a
    move-object v6, v5

    .line 283
    :goto_5
    if-nez v6, :cond_d

    move-object v5, v6

    .line 285
    goto :goto_4

    .line 277
    :cond_b
    if-nez v5, :cond_c

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 278
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 279
    invoke-interface {v12, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c
    move-object v6, v5

    goto :goto_5

    .line 288
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 290
    const/4 v5, 0x0

    .line 291
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_23

    .line 292
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    move-object v8, v5

    .line 295
    :goto_6
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 296
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_17

    .line 297
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 308
    :cond_e
    :goto_7
    const/4 v5, 0x0

    iput v5, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 309
    move/from16 v0, p3

    iput v0, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 311
    new-instance v15, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    invoke-direct {v15}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;-><init>()V

    .line 312
    invoke-virtual {v13}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getID()I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setTopEffectID(I)V

    .line 313
    const/high16 v5, 0x10000

    or-int/2addr v5, v7

    invoke-virtual {v15, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setID(I)V

    .line 314
    const/high16 v5, 0x10000

    or-int/2addr v5, v7

    invoke-virtual {v15, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setSubEffectID(I)V

    .line 315
    add-int/lit8 v5, v7, 0x1

    .line 317
    move/from16 v0, p3

    int-to-float v7, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->c()F

    move-result v9

    mul-float/2addr v7, v9

    float-to-int v9, v7

    .line 318
    move/from16 v0, p3

    int-to-float v7, v0

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->d()F

    move-result v10

    mul-float/2addr v7, v10

    float-to-int v10, v7

    .line 320
    sget-object v7, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    const-string v11, "Collage setDrawInfo2Clip(dur:%d %d %d)"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_1a

    .line 323
    iget v7, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    if-ge v9, v7, :cond_18

    move v7, v9

    :goto_8
    iput v7, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 324
    iget v7, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    if-le v10, v7, :cond_19

    move v7, v10

    :goto_9
    iput v7, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 326
    iget v7, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    iget v11, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    sub-int/2addr v7, v11

    invoke-virtual {v6, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 332
    :cond_f
    :goto_a
    invoke-virtual {v15, v9}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartTime(I)V

    .line 333
    invoke-virtual {v15, v10}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndTime(I)V

    .line 335
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v7

    const-string v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_10

    .line 336
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v7

    .line 337
    if-eqz v7, :cond_10

    .line 338
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 341
    :cond_10
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v9

    .line 342
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v7

    .line 344
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v10

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_11

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v10

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_12

    .line 345
    :cond_11
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v9

    .line 346
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v7

    .line 347
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_12

    .line 348
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v10

    invoke-virtual {v15, v10}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    .line 351
    :cond_12
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v10, v11, v0, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    new-instance v16, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 354
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v11

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_13

    .line 356
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v11

    .line 357
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 359
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 360
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v10, v11, v0, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 387
    :cond_13
    :goto_b
    sget-object v11, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Collage setDrawInfo2Clip"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->getRectangle()Landroid/graphics/RectF;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->getRectangle()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->r:F

    move/from16 v17, v0

    mul-float v11, v11, v17

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->getRectangle()Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->s:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    div-float v11, v11, v17

    .line 391
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->f()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 392
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/a;->g()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 393
    const/16 v19, 0x0

    cmpl-float v19, v17, v19

    if-eqz v19, :cond_14

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-eqz v19, :cond_14

    .line 394
    div-float v11, v17, v18

    .line 397
    :cond_14
    invoke-static {v10, v11}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;F)V

    .line 399
    sget-object v17, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Collage setDrawInfo2Clip sr : "

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {v10, v9, v7}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 402
    move-object/from16 v0, v16

    invoke-static {v0, v9, v7}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 404
    sget-object v17, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Collage setDrawInfo2Clip1 sr : "

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v17, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    const-string v18, "Collage setDrawInfo2Clip clip size(%d %d)"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v19, v20

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v19, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v15, v10}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {v15, v10}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 410
    invoke-virtual/range {v15 .. v16}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {v6, v15}, Lcom/nexstreaming/nexeditorsdk/nexClip;->addDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    .line 413
    invoke-virtual {v4, v6}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;)V

    .line 414
    invoke-virtual {v4, v11}, Lcom/nexstreaming/nexeditorsdk/a;->b(F)V

    .line 415
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;I)Ljava/lang/String;

    .line 418
    const/4 v6, 0x0

    .line 420
    if-eqz v8, :cond_20

    .line 422
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRotateState()I

    move-result v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    .line 423
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v7

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v9

    invoke-virtual {v15, v7, v9}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserTranslate(II)V

    .line 424
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserRotateState(I)V

    .line 425
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRealScale()F

    move-result v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRealScale(F)V

    .line 426
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getBrightness()I

    move-result v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setBrightness(I)V

    .line 427
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserLUT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserLUT(Ljava/lang/String;)V

    .line 429
    if-eqz p5, :cond_16

    .line 430
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserLUT()Ljava/lang/String;

    move-result-object v7

    .line 431
    if-eqz v7, :cond_15

    const-string v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_15

    .line 432
    invoke-static {v7}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v7

    .line 433
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v7

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getLUT()I

    move-result v9

    if-ne v7, v9, :cond_15

    .line 434
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getLUT()I

    move-result v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 437
    :cond_15
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 438
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 439
    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 448
    :cond_16
    :goto_c
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/a;->a(Landroid/graphics/RectF;)V

    .line 449
    invoke-virtual {v4, v6}, Lcom/nexstreaming/nexeditorsdk/a;->a(Z)V

    .line 450
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    const-string v6, "Collage apply rect(%s) %f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v15}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v15}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRealScale()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v4, 0x0

    move v7, v5

    move-object v5, v4

    .line 452
    goto/16 :goto_4

    .line 300
    :cond_17
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->clearTrim()V

    .line 301
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v5

    move/from16 v0, p3

    if-le v5, v0, :cond_e

    .line 303
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v5

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-virtual {v5, v9, v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    goto/16 :goto_7

    .line 323
    :cond_18
    iget v7, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    goto/16 :goto_8

    .line 324
    :cond_19
    iget v7, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    goto/16 :goto_9

    .line 328
    :cond_1a
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v7

    if-ge v9, v7, :cond_1b

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v9

    .line 329
    :cond_1b
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v7

    if-le v10, v7, :cond_f

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v10

    goto/16 :goto_a

    .line 363
    :cond_1c
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v7

    move/from16 v20, v0

    mul-float v11, v11, v20

    float-to-int v11, v11

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    iget v11, v10, Landroid/graphics/Rect;->right:I

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v11, v11, v17

    div-int/lit8 v11, v11, 0x2

    .line 366
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 367
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v11, v11, v17

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 368
    iget v11, v10, Landroid/graphics/Rect;->left:I

    if-gez v11, :cond_1d

    .line 369
    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 371
    :cond_1d
    iget v11, v10, Landroid/graphics/Rect;->right:I

    if-le v11, v9, :cond_1e

    .line 372
    iput v9, v10, Landroid/graphics/Rect;->right:I

    .line 374
    :cond_1e
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v11, v11, v17

    div-int/lit8 v11, v11, 0x2

    .line 375
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 376
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v11, v11, v17

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 377
    iget v11, v10, Landroid/graphics/Rect;->top:I

    if-gez v11, :cond_1f

    .line 378
    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 380
    :cond_1f
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    if-le v11, v7, :cond_13

    .line 381
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 446
    :cond_20
    const/4 v6, 0x1

    goto/16 :goto_c

    .line 454
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setTitle(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->e:Ljava/lang/String;

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->e:Ljava/lang/String;

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_22

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 458
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->f:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBGMMasterVolumeScale(F)V

    .line 465
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->t:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeInTime(I)V

    .line 466
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->u:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeOutTime(I)V

    .line 468
    const-string v4, "PreviewFPS"

    const-string v5, "30"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 471
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 472
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    .line 474
    const/4 v4, 0x0

    return-object v4

    .line 461
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 462
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBGMMasterVolumeScale(F)V

    goto :goto_d

    :cond_23
    move-object v8, v5

    goto/16 :goto_6
.end method

.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 611
    if-nez p1, :cond_0

    .line 612
    const-string v0, "Collage parsing error with invalid handle"

    .line 801
    :goto_0
    return-object v0

    .line 616
    :cond_0
    :try_start_0
    const-string v1, "collage_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b:Ljava/lang/String;

    .line 617
    const-string v1, "collage_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->c:Ljava/lang/String;

    .line 618
    const-string v1, "collage_desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->d:Ljava/lang/String;

    .line 619
    const-string v1, "collage_bgm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->e:Ljava/lang/String;

    .line 620
    const-string v1, "collage_bgm_volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->f:F

    .line 622
    const-string v1, "collage_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "static"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 623
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->StaticCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->g:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    .line 630
    :cond_1
    :goto_1
    const-string v1, "collage_duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->h:I

    .line 631
    const-string v1, "collage_edit_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->i:F

    .line 633
    const-string v1, "collage_ratio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->j:Ljava/lang/String;

    .line 634
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "v"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 635
    if-nez v1, :cond_3

    .line 636
    const-string v0, "Wrong ratio info was included"

    goto :goto_0

    .line 626
    :cond_2
    const-string v1, "collage_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dynamic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 627
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->DynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->g:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 794
    :catch_0
    move-exception v0

    .line 795
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 796
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse Collage header failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 639
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->r:F

    .line 640
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->s:F

    .line 644
    const-string v1, "collage_source_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->k:I

    .line 646
    const-string v1, "audio_res"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->l:Ljava/lang/String;

    .line 647
    const-string v1, "audio_res_pos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->m:F

    .line 649
    const-string v1, "collage_project_vol_fade_in_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 650
    const-string v1, "collage_project_vol_fade_in_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->t:I

    .line 653
    :cond_4
    const-string v1, "collage_project_vol_fade_out_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 654
    const-string v1, "collage_project_vol_fade_out_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->u:I

    .line 657
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->o:Z

    .line 658
    const-string v1, "frame_collage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 659
    const-string v1, "frame_collage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->o:Z

    .line 662
    :cond_6
    const-string v1, "effect"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->n:Ljava/lang/String;

    .line 664
    const-string v1, "draw_infos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 665
    const-string v1, "draw_infos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    .line 666
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 667
    new-instance v4, Lcom/nexstreaming/nexeditorsdk/a;

    invoke-direct {v4}, Lcom/nexstreaming/nexeditorsdk/a;-><init>()V

    .line 668
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 669
    if-eqz v5, :cond_8

    .line 670
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 671
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 672
    const-string v0, "Collage drawinfo parse error"

    goto/16 :goto_0

    :cond_7
    move v1, v0

    .line 659
    goto :goto_2

    .line 674
    :cond_8
    new-instance v5, Lcom/nexstreaming/nexeditorsdk/nexCollage$1;

    invoke-direct {v5, p0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexCollage;)V

    invoke-virtual {v4, v5}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;)V

    .line 724
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->p:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 729
    :cond_9
    const-string/jumbo v1, "title_infos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 730
    const-string/jumbo v1, "title_infos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 731
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 732
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;

    invoke-direct {v3}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;-><init>()V

    .line 733
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 734
    if-eqz v4, :cond_a

    .line 735
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 736
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 737
    const-string v0, "Collage title info parse error"

    goto/16 :goto_0

    .line 740
    :cond_a
    new-instance v4, Lcom/nexstreaming/nexeditorsdk/nexCollage$2;

    invoke-direct {v4, p0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$2;-><init>(Lcom/nexstreaming/nexeditorsdk/nexCollage;)V

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a(Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;)V

    .line 786
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 790
    :cond_b
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 800
    :cond_c
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->z:Z

    .line 801
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;)V
    .locals 4

    .prologue
    .line 824
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;->titleInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 825
    const/4 v0, 0x0

    .line 826
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;

    .line 827
    iget-object v1, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;->titleInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    .line 833
    :cond_0
    return-void

    .line 829
    :cond_1
    iget-object v1, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;->titleInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;)V

    .line 830
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 831
    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/nexeditorsdk/a;Lcom/nexstreaming/nexeditorsdk/a;)Z
    .locals 21

    .prologue
    .line 503
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 605
    :goto_0
    return v2

    .line 505
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/a;->getBindSource()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    .line 506
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/a;->getBindSource()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    .line 507
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 509
    :cond_3
    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    .line 510
    invoke-static {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v7

    .line 512
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 513
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 516
    :cond_4
    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 517
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 520
    :cond_5
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 521
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 523
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRotateState()I

    move-result v8

    .line 524
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v9

    .line 525
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v10

    .line 526
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v11

    .line 527
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRealScale()F

    move-result v12

    .line 528
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getLUT()I

    move-result v13

    .line 529
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTA()I

    move-result v14

    .line 530
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTB()I

    move-result v15

    .line 531
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTPower()I

    move-result v16

    .line 532
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserLUT()Ljava/lang/String;

    move-result-object v17

    .line 533
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getBrightness()I

    move-result v18

    .line 535
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRotateState()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    .line 536
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v19

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserTranslate(II)V

    .line 537
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserRotateState(I)V

    .line 538
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRealScale()F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRealScale(F)V

    .line 540
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 541
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserLUT()Ljava/lang/String;

    move-result-object v19

    .line 542
    if-eqz v19, :cond_a

    const-string v20, "none"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_a

    const-string v20, "null"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_a

    .line 543
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getLUT()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 552
    :cond_6
    :goto_1
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTA()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setCustomLUTA(I)V

    .line 553
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTB()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setCustomLUTB(I)V

    .line 554
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTPower()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setCustomLUTPower(I)V

    .line 556
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserLUT()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserLUT(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getBrightness()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setBrightness(I)V

    .line 559
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)Z

    .line 561
    invoke-virtual {v3, v8}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    .line 562
    invoke-virtual {v3, v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserTranslate(II)V

    .line 563
    invoke-virtual {v3, v11}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserRotateState(I)V

    .line 564
    invoke-virtual {v3, v12}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRealScale(F)V

    .line 566
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 567
    if-eqz v17, :cond_b

    const-string v2, "none"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "null"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 568
    invoke-virtual {v3, v13}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 577
    :cond_7
    :goto_2
    invoke-virtual {v3, v14}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setCustomLUTA(I)V

    .line 578
    invoke-virtual {v3, v15}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setCustomLUTB(I)V

    .line 579
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setCustomLUTPower(I)V

    .line 581
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserLUT(Ljava/lang/String;)V

    .line 582
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setBrightness(I)V

    .line 584
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v3}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)Z

    .line 586
    const/4 v3, 0x1

    .line 587
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 588
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 589
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(IZLcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 591
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v8, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->removeClip(I)V

    .line 594
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 595
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(IZLcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v8, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 597
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v8, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->removeClip(I)V

    .line 599
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 545
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v19

    const-string v20, "none"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v19

    const-string v20, "null"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_6

    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v19

    .line 547
    if-eqz v19, :cond_6

    .line 548
    invoke-virtual/range {v19 .. v19}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    goto/16 :goto_1

    .line 570
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v2

    const-string v8, "none"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v2

    const-string v8, "null"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 571
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v2

    .line 572
    if-eqz v2, :cond_7

    .line 573
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    goto/16 :goto_2

    .line 602
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setThumbnailRoutine(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->h:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->i:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->seek(I)V

    .line 605
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 478
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-nez v1, :cond_1

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    .line 480
    :cond_1
    if-nez p1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 483
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->f:F

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBGMMasterVolumeScale(F)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 494
    :goto_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->w:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    goto :goto_0

    .line 492
    :cond_3
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->k:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->h:I

    return v0
.end method

.method public d()Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->g:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    return-object v0
.end method

.method public e()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->r:F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->s:F

    div-float/2addr v0, v1

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->p:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    return-object v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->o:Z

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->z:Z

    return v0
.end method

.method j()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 805
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    if-nez v1, :cond_0

    .line 820
    :goto_0
    return-object v0

    .line 807
    :cond_0
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;

    invoke-direct {v1}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;-><init>()V

    .line 808
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->v:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    move-result-object v2

    iput-object v2, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    .line 809
    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;

    invoke-direct {v2}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;-><init>()V

    iput-object v2, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->collage:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;

    .line 811
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 812
    iget-object v2, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->collage:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;

    iput-object v0, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;->titleInfos:Ljava/util/List;

    :cond_1
    move-object v0, v1

    .line 820
    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->collage:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;->titleInfos:Ljava/util/List;

    .line 815
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollage;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;

    .line 816
    iget-object v3, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->collage:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;

    iget-object v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageOf;->titleInfos:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->d()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
