Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4339B1E9797
	for <lists+linux-mediatek@lfdr.de>; Sun, 31 May 2020 14:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNhWsjRHxCDhq0Dt1AHVrVsRG2dG7IX7RJvj3lOesbM=; b=u1M+9t2yPBuIAq
	9l2zoH7vMRUMuaFyPFizSQy2arSFg1YyWtHHnTvQrQOyJBamY0nVN4iq1j+TwsSgw17TicVeGdQ+u
	WjyBmFcPB5vRGJN75RHqvKYRxElJ2uMV1WJPmMZjhH1GnCPJWGauvROQZROCKkQhiOBl8U++qrrtE
	LuSBmNNxdCtfohAIhRnYJZASCZ5xTEtphqQFPtL9w3dt9MqsDvOsEVDf178fj0aceU6D3NUTXaAil
	mMq4vRDIJ+sGhagFddmdRaLgKnYoaz2Rx8PTvXe3hnlmdZgNMLbrw1EmpVQSj1/qPDRy+JFjbwFyy
	ybQXS/cswuhk7jHHKqGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfN9P-0005wl-Ii; Sun, 31 May 2020 12:33:15 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfN9M-0005vl-1p
 for linux-mediatek@lists.infradead.org; Sun, 31 May 2020 12:33:13 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1jfN9A-00033I-01; Sun, 31 May 2020 14:33:00 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id A8153C0654; Sun, 31 May 2020 14:32:48 +0200 (CEST)
Date: Sun, 31 May 2020 14:32:48 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH] MIPS: ralink: drop ralink_clk_init for mt7621
Message-ID: <20200531123248.GB6039@alpha.franken.de>
References: <20200328041523.81229-1-gch981213@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328041523.81229-1-gch981213@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_053312_242878_03DC5677 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [193.175.24.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 12:14:57PM +0800, Chuanhong Guo wrote:
> ralink_clk_init is only called in arch/mips/ralink/clk.c which isn't
> compiled for mt7621. And it doesn't export a proper cpu clock.
> Drop this unused function.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
>  arch/mips/ralink/mt7621.c | 43 ---------------------------------------
>  1 file changed, 43 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
