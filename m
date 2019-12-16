Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFC911FF86
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Dec 2019 09:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WlU+21udKCrxwFwWtA5AH51YvIqfoqRZ0aZz1XQPq8=; b=PqR3GoZ8h9xuid
	gHJCRL+wfvfv/6VnRm0X6xkAd4ETr9BCVT8cK8SGvOP/OHJhiU18krjGXBoFQHr3a+9P8hIfkOfKj
	9360Q6JI9IxczeOY8mutncghNlLL5R84nZqEW5UPfY6pC8ZKpHj/5+yoK87SfOtocU2LgTKkQGmd9
	NnpjDKun0wQPYkvGlvEuPMfLgaeQpfLhtXRVlw7O9u1izyHPgC2gM5QeOz4/kcZF3PdRg+xcpEvX1
	L8cs/iOBaBEylgjgNVliVJ7wQlfLGOycHL56ZdvPnM8yeMAcRpIj0QSHwT2KSfQFh1UMlNtw7hGFz
	3cHMVgsQRs5wDYRgtjDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglae-0000A6-0X; Mon, 16 Dec 2019 08:18:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglaa-000093-Hs
 for linux-mediatek@lists.infradead.org; Mon, 16 Dec 2019 08:18:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iglaW-0007fX-In; Mon, 16 Dec 2019 09:18:44 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iglaV-0003S5-5C; Mon, 16 Dec 2019 09:18:43 +0100
Date: Mon, 16 Dec 2019 09:18:43 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v2 1/2] pwm: fine tune pwm-mtk-disp clock control flow
Message-ID: <20191216081843.yxe3vm674jwurwri@pengutronix.de>
References: <20191216070123.114719-1-jitao.shi@mediatek.com>
 <20191216070123.114719-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216070123.114719-2-jitao.shi@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_001848_594356_747A9320 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 CK Hu <ck.hu@mediatek.com>, sj.huang@mediatek.com,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

On Mon, Dec 16, 2019 at 03:01:22PM +0800, Jitao Shi wrote:
> Match pwm clock when suspend and resume.
> Prepare and enable disp_pwm clock when disp_pwm enable.
> Disable and unprepare disp_pwm clock when disp_pwm disable.

Assuming you catched all clock operations (I didn't check), the patch
looks fine. The commit log could however be improved. Additional to
describing what the patch does, some words about the motivation would be
good. Does this fix a bug? Is it to save some power while the PWM isn't
in use?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
