Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB4C70B81
	for <lists+linux-mediatek@lfdr.de>; Mon, 22 Jul 2019 23:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8rqaz21jAZB4ajmhGBFrSt9petI3AzAFdgCMVHXvSg=; b=h+v6qRu1GA9Tw+
	UmhoHooAN2YkcTkItzHC7tln3gT05Y5WURI3cfNGeCkIl4Eg0HHStXtkI8PTPD1sEE37UQGpKFoJB
	ZUWZKHg+U6wf5GSweXEHFr3EWkMXBRO3yYWfIci2/1LyZD6rMY4bgjRJ5q/Ow1R5oqo/7JvAzY2Xn
	R6Tyf9xhhCfSxeqlHlmE6YjK+KmrfGhn/Bm5YIguhGblVmf+ZFAjxV5Kcs+4UbaSmxzvmVpOPDG9X
	tZ6UlMmkh27NRyAAr/Dqy/aKi2hOWCR+rWrphGlo5ERkTq4lsaALbi80YvhsK6hqPjKQycB2C3Qz/
	HQ2BfkAg7k6wqDjT5ByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfwI-0005t5-JK; Mon, 22 Jul 2019 21:33:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfvv-0005gV-Th; Mon, 22 Jul 2019 21:33:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 874B121900;
 Mon, 22 Jul 2019 21:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563831203;
 bh=LRjTFf0P+1cadmeWrN32PXo23OKVXtFRMmj+KLXh4PU=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=Et+11J5o7dtf0jIwThtwUHyzBvrvzsgbckUvSpM1TivPdOHG3Py9lLgsL5BCiVzLH
 g5uHZKRpqKKBAB1L6J5wDwqciKXeX76imwWZCx4TVRhMsPKnDQxu5mZANuE7Lfxt7k
 +HbfBWavPbbOg/gZmWKFtWATaQFHuk5JI8+AtwXk=
MIME-Version: 1.0
In-Reply-To: <1561706554-27770-1-git-send-email-weiyi.lu@mediatek.com>
References: <1561706554-27770-1-git-send-email-weiyi.lu@mediatek.com>
Subject: Re: [PATCH v3] clk: mediatek: mt8183: Register 13MHz clock earlier
 for clocksource
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Weiyi Lu <weiyi.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:33:22 -0700
Message-Id: <20190722213323.874B121900@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_143323_970598_24F06E5C 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Dehui Sun <dehui.sun@mediatek.com>, James Liao <jamesjj.liao@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Weiyi Lu (2019-06-28 00:22:34)
> The 13MHz clock should be registered before clocksource driver is
> initialized. Use CLK_OF_DECLARE_DRIVER() to guarantee.
> 
> Fixes: acddfc2c261b ("clk: mediatek: Add MT8183 clock support")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---

Applied to clk-fixes


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
