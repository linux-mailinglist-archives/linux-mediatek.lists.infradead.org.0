Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C468B304
	for <lists+linux-mediatek@lfdr.de>; Tue, 13 Aug 2019 10:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oBN7FGll0jO+apbGDTyND9O8vTwEFjE3ZMETk6oMp4s=; b=DjHSUebPAGPQl0
	XQyCe569RlkC++ZFcytF2uXyr/b+MAzNahMb9ttlN36WsXZwmg4y+oN5BjkxUHSFgzOJr4SOxXE6q
	IKFo4DK/Z18da1fENyqNpqtOhne4H7YvJqB1x4SpgJAIfAaNkhvYoH4IH0DHAt4rAHQPR+wBV9atr
	vb5FFVP9afoP3iSA/rJ4lxrmiQ1rKZJY9xWDMl9b7sjtWc7MZ/7KIhSz1Po0qOkdNeGMYthbRNBSY
	Veq+oiScrokD6aGZBb6nI2IvYcqJnLb0GyiqspB3ox1y6z1TtDDVal9MCOOBL70lwvWk9n6sSriGW
	pDfkYdw/Bxu/YZv+7ghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSYu-0003EX-Gb; Tue, 13 Aug 2019 08:53:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSYr-0003D1-Gd
 for linux-mediatek@lists.infradead.org; Tue, 13 Aug 2019 08:53:46 +0000
X-UUID: bfac11f6f9f44086a1fe012bdde06d29-20190813
X-UUID: bfac11f6f9f44086a1fe012bdde06d29-20190813
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 911663517; Tue, 13 Aug 2019 00:53:34 -0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 01:53:33 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by mtkexhb02.mediatek.inc
 (172.21.101.103) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 13 Aug 2019 16:53:20 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 13 Aug 2019 16:53:19 +0800
From: Light Hsieh <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v1 0/5] Improve MediaTek pinctrl v2 and make backward
 compatible to smartphone mass production usage
Date: Tue, 13 Aug 2019 16:53:15 +0800
Message-ID: <1565686400-5711-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_015345_552720_76A23D91 
X-CRM114-Status: UNSURE (   2.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch improves MediaTek pinctrl v2 and makes backward compatible to
current smartphone mass production usage by:
1.Check gpio pin number and use binary search in control address lookup
2.Supporting driving setting without mapping current to register value
3.Correct usage of PIN_CONFIG get/set implementation
4.Backward compatible to previous Mediatek's bias-pull usage
5.Add support for pin configuration dump via sysfs



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
