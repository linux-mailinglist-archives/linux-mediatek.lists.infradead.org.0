Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E391323CC
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Jan 2020 11:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ydtZt+RuKyzqATk9z6dSeqIMUqvauZ0NPOR5FYbSxMU=; b=swlCU8mWHMjVL0
	FbJnPqeNYPCxmOVgaE6tx2yrS4v84chDC490i5hkknFUNv2X4C4m7heuNmjuP/U90qG0MV/iugNIt
	mp9PXbZb2QtU5lX8ik4t522yvAgjYDgGBaeioxAYzLFF0riuAaRTQyxYqRsB+KGA6dvIk4b3cXcwE
	AQNHi82I5pk2GTyibNlE+UQmOodWz0RNN0hNTXroNE4Ojjy+sUB4mKpSM7Dr1rnnZxOkxN9ymHRFl
	e8jkopVxgvE6dCh7iiy5thbIYSezOg4mwO6CqZW3NHgKMlZFTWNonHShUr3YwdTsf5PNsDfoKZIKK
	Di/uaLU2XmXkAt5n2P2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomG0-0005kx-1z; Tue, 07 Jan 2020 10:38:40 +0000
Received: from relaygw2-4.mclink.it ([213.21.178.139])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomFv-0005dV-3c
 for linux-mediatek@lists.infradead.org; Tue, 07 Jan 2020 10:38:36 +0000
Received: from smtpoutgw3.mclink.it ([172.24.30.43] verified)
 by relaygw2-4.mclink.it (CommuniGate Pro SMTP 6.0.4)
 with ESMTP id 160738466 for linux-mediatek@lists.infradead.org;
 Tue, 07 Jan 2020 11:38:31 +0100
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DHAQA0XhRe//jaMU8NWRwBAQEBAQcBA?=
 =?us-ascii?q?REBBAQBAYF8iE+RBoQThgCBPZALCQEBAQEBAQEBATcBAYZPOBMCEAEBBQEBAQE?=
 =?us-ascii?q?BBQSMOA8BewImAmwIAQGDHoJTq3t1gTKFT4MrgT2BDiiMcoFBgTgMhCKEEoJDg?=
 =?us-ascii?q?l4EgT8BAQGLeKFkAQYCgV9ZlhYGG5pfhEOnAoF6gl6BT08ljSqOL48AXwEB?=
Received: from host248-218-dynamic.49-79-r.retail.telecomitalia.it (HELO
 [192.168.7.118]) ([79.49.218.248])
 by smtpoutgw3.mclink.it with ESMTP; 07 Jan 2020 11:38:30 +0100
To: linux-mediatek@lists.infradead.org
From: Mauro Condarelli <mc5686@mclink.it>
Subject: MT7628AN Device Tree settings
Message-ID: <f4c98274-4213-342d-df7f-4e066090d8af@mclink.it>
Date: Tue, 7 Jan 2020 11:38:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_023835_329267_DB31DDC2 
X-CRM114-Status: UNSURE (   4.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SSBhbSB0cnlpbmcgdG8gZnVsbHkgY29uZmlndXJlIGEgY3VzdG9tIGJvYXJkIGJhc2VkIG9uIFZv
Q29yZTIgU29NCnNwb3J0aW5nIGEgTVQ3NjI4QU4gU29DLgoKQmFzaWMgZnVuY3Rpb25hbGl0eSB3
b3JrcywgYnV0IHNldmVyYWwgc3Vic3lzdGVtcyBhcmUgc3RpbGwgbm90CmNvbmZpZ3VyZWQgcHJv
cGVybHkuCgpJbiBwYXJ0aWN1bGFyIEknbSBzdHJ1Z2dsaW5nIHdpdGg6CgotIFdhdGNoZG9nOiBp
dCdzIHdvcmtpbmcgaW4gVS1Cb290LCBidXQgYXBwYXJlbnRseSBub3QgaW4gTGludXgga2VybmVs
CsKgIChJIHNlZSBubyAvZGV2L3dhdGNoZG9nKQoKLSBSTkc6IElGRiBJIHVuZGVyc3RhbmQgY29y
cmVjdGx5IE1UNzYyOCBoYXMgYSBtdDc2MjMtY29tcGF0aWJsZQpoYXJkd2FyZSBSTkcuCsKgIFVu
Zm9ydHVuYXRlbHkgSSB3YXMgdW5hYmxlIHRvIGZpbmQgc3BlY2lmaWMgZG9jdW1lbnRhdGlvbiBh
bmQgdGh1cyBJCmNhbid0IHdyaXRlCsKgIHRoZSBuZWVkZWQgLmR0cyBzdGFuY2UuCgpDYW4gc29t
ZW9uZSBwb2ludCBtZSBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uPwpUaGlzIGlzLCBvZiBjb3Vyc2Us
IGEgcHJlbGltaW5hcnkgaW5xdWlyeSwgSSdtIGZ1bGx5IHByZXBhcmVkIHRvIGdpdmUKYWxsIGRl
dGFpbHMgYW5kCnRvIGZvbGxvdyBhbnkgbmVlZGVkIHByb2NlZHVyZSB0byBpbmNvcnBvcmF0ZSBy
ZXN1bHRzIHVwc3RyZWFtLgoKSGFwcHkgTmV3IFllYXIhCk1hdXJvIENvbmRhcmVsbGkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVr
IG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
