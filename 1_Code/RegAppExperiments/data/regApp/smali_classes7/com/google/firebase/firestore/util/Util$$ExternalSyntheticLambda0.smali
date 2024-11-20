.class public final synthetic Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->lambda$values$3(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
