.class Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllocateQueryHolder"
.end annotation


# instance fields
.field cached:Lcom/google/firebase/firestore/local/TargetData;

.field targetId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/local/LocalStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/local/LocalStore$1;

    .line 814
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;-><init>()V

    return-void
.end method
