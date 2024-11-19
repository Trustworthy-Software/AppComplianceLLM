.class Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;
.super Ljava/lang/Object;
.source "SQLiteTargetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLiteTargetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TargetDataHolder"
.end annotation


# instance fields
.field targetData:Lcom/google/firebase/firestore/local/TargetData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/local/SQLiteTargetCache$1;

    .line 232
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;-><init>()V

    return-void
.end method
