Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396C46F29D
	for <lists+linux-mediatek@lfdr.de>; Sun, 21 Jul 2019 12:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jH7spNb2oogc+NMBgB6qu8ObgHPpRbqmitLaBLeSHI=; b=H8OV/BsaFv0uzj
	9AlQ35LHWH91EB0lwR06IA693Nc9D3mT5qqhotAykY6nhe6OdKIXNUduQQ7+QFc0s/dEiwgwW2pIS
	xQ9GbQ/vxF62GKAT8XB43jIz9eaKCzkHrshGL45se3QMmMz2DMQiiYXXqRioZlesxv6Q0T07++35t
	fYyI4JgBmmSuMZR6S773W4QkRmcr6rpD+IK37oPMhQqJwJ9MbmSYvbq2DOnXdOSilryZAFehViqta
	9Zq5PyLrgobV7kjHLyY3RTehbSjdf3y8Mt8C8BhCjlLVzuD6zVIFk3DXSy+22YMuNqNHYv7N0BBz9
	bmuLsYaRstlC86vHihQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp94s-0007fe-UL; Sun, 21 Jul 2019 10:28:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp94p-0007fM-Na
 for linux-mediatek@lists.infradead.org; Sun, 21 Jul 2019 10:28:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 75EB660A97; Sun, 21 Jul 2019 10:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563704903;
 bh=kD5iFpMQDyZoB1AMJrJ6Nu/Cpk0yTJrch8RqYZ0t3Hc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=akb6TljbMGmPVUJ8T/yHxR/wNky5DZrHaVqrH1cRKyj0i23vBoFBmuDwv1QtwwjG8
 f/1iRNIZ0kYTVEDW9L/LsM/XizSYgG9uvw/lNTjk/tlFcFbamcgSzl9cHD2sn92kNE
 ymPMxbcesI8xFyZPIa98d64uUoEnakIXa+1Bv3nA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from purkki.adurom.net (purkki.adurom.net [80.68.90.206])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C77FE6087F;
 Sun, 21 Jul 2019 10:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563704902;
 bh=kD5iFpMQDyZoB1AMJrJ6Nu/Cpk0yTJrch8RqYZ0t3Hc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=gaPZ5BvLoZkI8tHv65o77exAADkP4LQ1vPoClWVY6ZwHCQxIkRYDTjQMjY/krgOjF
 1n7dJoIUiCqZYtlINQVSTRc8Ynco+qw7kBCxI9aTF+XtKNRQVtwqxsqwTx4U1vulav
 iNEs/DE5GiWseK8+Yk+q0iFgYhUIEP21lQ65r66U=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C77FE6087F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 3/3] mt76: mt7615: add cwmin/cwmax initial values
References: <50d28c9b0f9e7d6b277d36fc93f55142d7535259.1563518381.git.ryder.lee@mediatek.com>
 <c83e14787bc86f8f8062e0aa44e03ef80c3fd38a.1563518381.git.ryder.lee@mediatek.com>
Date: Sun, 21 Jul 2019 13:28:18 +0300
In-Reply-To: <c83e14787bc86f8f8062e0aa44e03ef80c3fd38a.1563518381.git.ryder.lee@mediatek.com>
 (Ryder Lee's message of "Fri, 19 Jul 2019 14:55:36 +0800")
Message-ID: <877e8bsmv1.fsf@purkki.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_032823_784843_06E81BBF 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Ryder Lee <ryder.lee@mediatek.com> writes:

> Add initial values in mt7615_mcu_set_wmm() to cleanup setup flow.
>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

[...]

> -#define WMM_AIFS_SET	BIT(0)
> -#define WMM_CW_MIN_SET	BIT(1)
> -#define WMM_CW_MAX_SET	BIT(2)
> -#define WMM_TXOP_SET	BIT(3)
> +#define WMM_PARAM_SET	GENMASK(3, 0)

I don't see how this is any better? IMHO you just hide what is the
meaning of each bit.

-- 
Kalle Valo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
