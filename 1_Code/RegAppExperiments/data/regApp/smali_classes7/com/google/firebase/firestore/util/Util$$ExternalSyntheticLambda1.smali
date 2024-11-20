.class public final synthetic Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda1;->f$0:Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->lambda$crashMainThread$1(Ljava/lang/RuntimeException;)V

    return-void
.end method
