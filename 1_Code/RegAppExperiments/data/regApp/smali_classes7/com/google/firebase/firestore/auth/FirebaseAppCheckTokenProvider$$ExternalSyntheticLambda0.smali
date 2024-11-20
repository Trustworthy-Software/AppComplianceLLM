.class public final synthetic Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;

    return-void
.end method


# virtual methods
.method public final onAppCheckTokenChanged(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->lambda$new$0$com-google-firebase-firestore-auth-FirebaseAppCheckTokenProvider(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    return-void
.end method
