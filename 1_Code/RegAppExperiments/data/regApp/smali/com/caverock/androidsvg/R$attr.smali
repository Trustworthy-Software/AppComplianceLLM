.class public final Lcom/caverock/androidsvg/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static css:I

.field public static svg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const v0, 0x7f040001

    sput v0, Lcom/caverock/androidsvg/R$attr;->css:I

    .line 12
    const v0, 0x7f040002

    sput v0, Lcom/caverock/androidsvg/R$attr;->svg:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
