Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1B9D65E4
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 17:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+IYdKtbvpA/ctU3p3Y7rm8Xe6hKlnfeRpILMHNUCYg=; b=OU3Loplun4c8CI
	3koivrnGxwhEgLFpiiIhqSvEW5sojAtKS89FfdfcxWaZpyHPz9Z/Y5fO5bqZ5/LjVxCHVBe7O1GyG
	vqWmZzcb14wVdzKgFADIVeT+4CiQKLVTqaO3zBDgHSOmw1US7+BGIkGb/ozHS4og7WTD6B5uojEH/
	F7IzMxsDQqkqgumyThIh6/AO8Ff2PeG7ZqV+ktRQxKphTxkDa5VAhj0LKBcLXUo55ATy2J5WX5f7S
	P0OAyxEcsRfZSZucfy+O+ZKTyFhgE+P8LVZ01WAlAdVWARnrXhRb3NmqnTygORqq23Nyy/OWrHF3T
	TwAfHScNXqZHMMkgOodw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1wP-0000VS-M5; Mon, 14 Oct 2019 15:07:21 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iK1wE-0000ND-79; Mon, 14 Oct 2019 15:07:10 +0000
Date: Mon, 14 Oct 2019 08:07:10 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH 2/2] kasan: add test for invalid size in memmove
Message-ID: <20191014150710.GY32665@bombadil.infradead.org>
References: <20191014103654.17982-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014103654.17982-1-walter-zh.wu@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: wsd_upstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 06:36:54PM +0800, Walter Wu wrote:
> Test size is negative numbers in memmove in order to verify
> whether it correctly get KASAN report.

You're not testing negative numbers, though.  memmove() takes an unsigned
type, so you're testing a very large number.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
