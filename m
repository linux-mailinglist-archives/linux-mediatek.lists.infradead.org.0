Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0E51E6813
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 19:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVe4OCTW0L8y/DJ8TscjkbbULknUZaPQFUh+1TQ1VM8=; b=YkpOZlWqJzi+id
	6HHwMT7gclwrWG/iLhqMv/HYgIuN2+j00zEoK+dTEc5SSKU8XQeYvmLNsY8NKQMINNt15E/ALuo2R
	CSf7Ge4cBZZF1vdJfSwGfx9tQCbUaDoNmog8SaWJ2GfaXoZyuHKY0PDh/Q1OXeYl8tnLkfyh/5O3s
	nvktn8EcWQhwLTaanRjFHvYmadb1XFCTET9+agbzLjc6QHizdlxUuTkdSxGnrPs/+jESsKgcyadrX
	XNd+/qoCGiTvUdUnzh+68nA4BJUzSR5Mm2aScUB/SAL+XQqs2lRVsFG4P1dHEHtBYiEFWDJa9oBM/
	4qBVn6pPlXRQVg0IjZCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLyA-0000Dz-Ki; Thu, 28 May 2020 17:05:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLy5-0000AE-4E; Thu, 28 May 2020 17:05:23 +0000
X-UUID: 1a3fb9cca595479cb03fab4838e0072b-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=D+dXiJm3APaX+tyDPhHiGjNPGNdy177jnTfCoMxdsUw=; 
 b=tX9G8rFVKE0aAdfMbDoV9RN3RMHFnlq+FQzJ5neDMl0AvSVXwKI3W33+H9kkvB86TsnaSTy39vbpp+MCCLaL5WW3P3PP4m+3uMpU0AjdtItDVIZa8CMi32ORk39ObMYGAPQNwiCZ/rAw+2FmYFRlLriiRvIE17mbGnZAFO298lc=;
X-UUID: 1a3fb9cca595479cb03fab4838e0072b-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1974029423; Thu, 28 May 2020 09:04:53 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 10:05:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 01:05:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 29 May 2020 01:05:08 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jassi Brar
 <jassisinghbrar@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v6 04/16] mailbox: mediatek: cmdq: clear task in channel
 before shutdown
Date: Fri, 29 May 2020 01:04:40 +0800
Message-ID: <1590685491-17107-6-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1590685491-17107-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1590685491-17107-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_100521_704969_660CC25C 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Do success callback in channel when shutdown. For those task not finish,
callback with error code thus client has chance to cleanup or reset.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c | 38 ++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 9994ac9426d6..b56d340c8982 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -387,6 +387,12 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
 
 	if (list_empty(&thread->task_busy_list)) {
 		WARN_ON(clk_enable(cmdq->clock) < 0);
+		/*
+		 * The thread reset will clear thread related register to 0,
+		 * including pc, end, priority, irq, suspend and enable. Thus
+		 * set CMDQ_THR_ENABLED to CMDQ_THR_ENABLE_TASK will enable
+		 * thread and make it running.
+		 */
 		WARN_ON(cmdq_thread_reset(cmdq, thread) < 0);
 
 		writel(task->pa_base >> cmdq->shift_pa,
@@ -450,6 +456,38 @@ static int cmdq_mbox_startup(struct mbox_chan *chan)
 
 static void cmdq_mbox_shutdown(struct mbox_chan *chan)
 {
+	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
+	struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
+	struct cmdq_task *task, *tmp;
+	unsigned long flags;
+
+	spin_lock_irqsave(&thread->chan->lock, flags);
+	if (list_empty(&thread->task_busy_list))
+		goto done;
+
+	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
+
+	/* make sure executed tasks have success callback */
+	cmdq_thread_irq_handler(cmdq, thread);
+	if (list_empty(&thread->task_busy_list))
+		goto done;
+
+	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
+				 list_entry) {
+		cmdq_task_exec_done(task, CMDQ_CB_ERROR);
+		kfree(task);
+	}
+
+	cmdq_thread_disable(cmdq, thread);
+	clk_disable(cmdq->clock);
+done:
+	/*
+	 * The thread->task_busy_list empty means thread already disable. The
+	 * cmdq_mbox_send_data() always reset thread which clear disable and
+	 * suspend statue when first pkt send to channel, so there is no need
+	 * to do any operation here, only unlock and leave.
+	 */
+	spin_unlock_irqrestore(&thread->chan->lock, flags);
 }
 
 static const struct mbox_chan_ops cmdq_mbox_chan_ops = {
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
