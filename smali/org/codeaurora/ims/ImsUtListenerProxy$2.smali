.class Lorg/codeaurora/ims/ImsUtListenerProxy$2;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtListenerProxy;

.field final synthetic val$error:Lcom/android/ims/ImsReasonInfo;

.field final synthetic val$id:I

.field final synthetic val$ut:Lcom/android/ims/internal/IImsUt;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsUtListenerProxy;
    .param p2, "val$ut"    # Lcom/android/ims/internal/IImsUt;
    .param p3, "val$id"    # I
    .param p4, "val$error"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->this$0:Lorg/codeaurora/ims/ImsUtListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->val$ut:Lcom/android/ims/internal/IImsUt;

    iput p3, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->val$id:I

    iput-object p4, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->val$error:Lcom/android/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->this$0:Lorg/codeaurora/ims/ImsUtListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->val$ut:Lcom/android/ims/internal/IImsUt;

    iget v3, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->val$id:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->val$error:Lcom/android/ims/ImsReasonInfo;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;->this$0:Lorg/codeaurora/ims/ImsUtListenerProxy;

    const-string/jumbo v2, "utConfigurationUpdateFailed()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->-wrap0(Lorg/codeaurora/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
