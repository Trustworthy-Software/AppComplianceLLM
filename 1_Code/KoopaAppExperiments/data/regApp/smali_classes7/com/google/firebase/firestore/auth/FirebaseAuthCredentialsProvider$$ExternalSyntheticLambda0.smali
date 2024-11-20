.class public final synthetic Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/auth/internal/IdTokenListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;

    return-void
.end method


# virtual methods
.method public final onIdTokenChanged(Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->lambda$new$0$com-google-firebase-firestore-auth-FirebaseAuthCredentialsProvider(Lcom/google/firebase/internal/InternalTokenResult;)V

    return-void
.end method
