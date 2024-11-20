.class public Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ExpirableBitmapDrawable.java"


# static fields
.field public static final EXPIRED:I = -0x2

.field public static final NOT_FOUND:I = -0x4

.field public static final SCALED:I = -0x3

.field public static final UP_TO_DATE:I = -0x1

.field private static final defaultStatus:I = -0x1

.field private static final settableStatuses:[I


# instance fields
.field private mState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    const/4 v0, -0x3

    const/4 v1, -0x4

    const/4 v2, -0x2

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->settableStatuses:[I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "pBitmap"    # Landroid/graphics/Bitmap;

    .line 24
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    .line 26
    return-void
.end method

.method public static getState(Landroid/graphics/drawable/Drawable;)I
    .locals 9
    .param p0, "pTile"    # Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 51
    .local v4, "statusItem":I
    sget-object v5, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->settableStatuses:[I

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    .line 52
    .local v8, "statusReference":I
    if-ne v4, v8, :cond_0

    .line 53
    return v4

    .line 51
    .end local v8    # "statusReference":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 50
    .end local v4    # "statusItem":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static isDrawableExpired(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "pTile"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDrawableExpired(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "pTile"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/4 v0, -0x2

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 66
    return-void
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p0, "pTile"    # Landroid/graphics/drawable/Drawable;
    .param p1, "status"    # I

    .line 69
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 70
    return-void
.end method


# virtual methods
.method public getState()[I
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "pStateSet"    # [I

    .line 40
    iput-object p1, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    .line 41
    const/4 v0, 0x1

    return v0
.end method
