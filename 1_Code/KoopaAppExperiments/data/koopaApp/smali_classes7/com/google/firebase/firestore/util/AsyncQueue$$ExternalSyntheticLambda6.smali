.class public final synthetic Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->lambda$panic$3(Ljava/lang/Throwable;)V

    return-void
.end method
